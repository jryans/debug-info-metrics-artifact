import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

def load_our_data():
  import os

  def summarise(file):
    df = pd.read_table(file)
    # Some files are expected to be empty (whole program optimised away)
    if len(df) == 0:
      print(f"Skipping {file}, no data found")
      raise RuntimeError("No data")
    df.columns = df.columns.str.strip()

    df["Locatability"] = df["Locatable (V)"] / df["Scope (V)"]

    present_reachable_df = df[
      (df["Present"] == 1) &
      (df["Reachable"] == 1)
    ]
    line_coverage = len(present_reachable_df) / len(df)

    # Not convinced this is statistically valid, but it's what ASPLOS does
    availability_of_variables = present_reachable_df["Locatability"].mean()

    return {
      "Line Coverage": line_coverage,
      "Availability of Variables": availability_of_variables,
    }

  versions = [5, 7, 9, 11]
  levels = ["0", "1", "2", "3", "g", "s"]

  testcases = []
  for tc in os.listdir("testcases"):
    try:
      testcases.append(int(tc))
    except ValueError:
      continue
  testcases.sort()

  rows = []
  for version in versions:
    for level in levels:
      variant_testcases = []
      for tc in testcases:
        try:
          variant_testcase = summarise(f"testcases/{tc}/bin/clang-{version}/opt-{level}-lines.tsv")
          variant_testcases.append(variant_testcase)
        except RuntimeError:
          continue
      variant_df = pd.DataFrame(variant_testcases)
      variant_stats = variant_df.mean()
      rows.append({
        "Toolchain": "Clang",
        "Version": int(version),
        "Level": f"O{level}",
        "Line Coverage": variant_stats["Line Coverage"],
        "Availability of Variables": variant_stats["Availability of Variables"],
      })

  df = pd.DataFrame(rows)

  df["Product of Metrics"] = df["Line Coverage"] * df["Availability of Variables"]

  return df

def load_asplos_data():
  import json

  data = {}
  with open("testcases/testcases.json") as summary_file:
    data = json.load(summary_file)

  rows = []
  stats = data["statistics"]
  for compiler_version in stats:
    # Only read in released compiler versions
    if "-" not in compiler_version:
      continue
    version = compiler_version.split("-")[1]
    levels = stats[compiler_version]
    for level in levels:
      level_data = levels[level]
      rows.append({
        "Toolchain": "Clang",
        "Version": int(version),
        "Level": f"O{level}",
        "Line Coverage": level_data["lines_ratio"],
        "Availability of Variables": level_data["available"],
      })

  df = pd.DataFrame(rows)
  df = df.sort_values(by=["Version", "Level"])

  df["Product of Metrics"] = df["Line Coverage"] * df["Availability of Variables"]

  return df

def load_data():
  our_df = load_our_data()
  asplos_df = load_asplos_data()

  df = pd.concat([
    our_df,
    asplos_df,
  ], keys=[
    "This paper",
    "Assaiante et al.",
  ], names=[
    "Metric",
  ])

  return df

def line_coverage(df):
  df = df.copy()
  g = sns.relplot(
    df,
    x="Version",
    y="Line Coverage",
    hue="Level",
    style="Metric",
    kind="line",
  )
  g.set(
    title="Line coverage (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Line coverage relative to baseline",
    ybound=(0, 1.002),
  )

def availability_of_variables(df):
  df = df.copy()
  g = sns.relplot(
    df,
    x="Version",
    y="Availability of Variables",
    hue="Level",
    style="Metric",
    kind="line",
  )
  g.set(
    title="Availability of variables (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Availability of variables relative to baseline",
    ybound=(0.5, 1.002),
  )

def product_of_metrics(df):
  df = df.copy()
  g = sns.relplot(
    df,
    x="Version",
    y="Product of Metrics",
    hue="Level",
    style="Metric",
    kind="line",
  )
  g.set(
    title="Product of metrics (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Product of metrics",
    ybound=(0, 1.002),
  )

def combined(df):
  df = df.copy()

  # Create figure with multiple axes
  fig, axs = plt.subplots(
    1, 3,
    figsize=(6, 2.1),
    layout="constrained",
  )
  [ax1, ax2, ax3] = axs

  sns.lineplot(
    df,
    x="Version",
    y="Line Coverage",
    hue="Level",
    style="Metric",
    ax=ax1,
  )
  ax1.set(
    title="Line coverage (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Line coverage relative to baseline",
    ybound=(0, 1.002),
  )
  # Generate and then remove first legend
  # Data added will power the figure-level legend below
  ax1.get_legend().remove()

  sns.lineplot(
    df,
    x="Version",
    y="Availability of Variables",
    hue="Level",
    style="Metric",
    legend=False,
    ax=ax2,
  )
  ax2.set(
    title="Availability of variables (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Availability relative to baseline",
    ybound=(0.5, 1.002),
  )

  sns.lineplot(
    df,
    x="Version",
    y="Product of Metrics",
    hue="Level",
    style="Metric",
    legend=False,
    ax=ax3,
  )
  ax3.set(
    title="Product of metrics (Clang)",
    xlabel="Clang version",
    xbound=(5, 11),
    xticks=[5, 7, 9, 11],
    ylabel="Product of metrics",
    ybound=(0, 1.002),
  )

  fig.legend(
    loc="center left",
    bbox_to_anchor=(1.0, 0.5),
    fontsize="small",
  )
