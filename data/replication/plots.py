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
      raise RuntimeError("No data")
    df.columns = df.columns.str.strip()

    line_coverage = len(df[df["Present"] == 1]) / len(df)

    # Not convinced this is statistically valid, but it's what ASPLOS does
    df["Locatability"] = df["Locatable (V)"] / df["Scope (V)"]
    availability_of_variables = df["Locatability"].mean()

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
          variant_testcase = summarise(f"testcases/{tc}/bin/clang-{version}/opt-{level}.tsv")
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
    "Ours",
    "ASPLOS",
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
    xticks=[5, 7, 9, 11],
    ylabel="Line coverage relative to baseline",
    ybound=(0, 1),
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
    xticks=[5, 7, 9, 11],
    ylabel="Availability of variables relative to baseline",
    ybound=(0, 1),
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
    xticks=[5, 7, 9, 11],
    ylabel="Product of metrics",
    ybound=(0, 1),
  )
