import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

def load_data():
  import json

  asplos_data = {}
  with open("testcases/testcases.json") as asplos_file:
    asplos_data = json.load(asplos_file)

  asplos_rows = []
  asplos_stats = asplos_data["statistics"]
  for compiler_version in asplos_stats:
    # Only read in released compiler versions
    if "-" not in compiler_version:
      continue
    version = compiler_version.split("-")[1]
    levels = asplos_stats[compiler_version]
    for level in levels:
      level_data = levels[level]
      asplos_rows.append({
        "Toolchain": "Clang",
        "Version": int(version),
        "Level": f"O{level}",
        "Line Coverage": level_data["lines_ratio"],
        "Availability of Variables": level_data["available"],
      })

  df = pd.DataFrame(asplos_rows)

  df["Product of Metrics"] = df["Line Coverage"] * df["Availability of Variables"]

  return df

def line_coverage(df):
  df = df.copy()
  df = df.sort_values(by="Version")
  g = sns.relplot(
    df,
    x="Version",
    y="Line Coverage",
    hue="Level",
    kind="line",
    markers=True,
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.15, 0.225),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title="Line coverage (Clang)",
    xlabel="Clang version",
    xticks=[5, 7, 9, 11],
    ylabel="Line coverage relative to baseline",
    ybound=(0, 0.5),
  )

def availability_of_variables(df):
  df = df.copy()
  df = df.sort_values(by="Version")
  g = sns.relplot(
    df,
    x="Version",
    y="Availability of Variables",
    hue="Level",
    kind="line",
    markers=True,
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.15, 0.225),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title="Availability of variables (Clang)",
    xlabel="Clang version",
    xticks=[5, 7, 9, 11],
    ylabel="Availability of variables relative to baseline",
    ybound=(0.5, 1),
  )

def product_of_metrics(df):
  df = df.copy()
  df = df.sort_values(by="Version")
  g = sns.relplot(
    df,
    x="Version",
    y="Product of Metrics",
    hue="Level",
    kind="line",
    markers=True,
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.15, 0.225),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title="Product of metrics (Clang)",
    xlabel="Clang version",
    xticks=[5, 7, 9, 11],
    ylabel="Product of metrics",
    ybound=(0, 0.5),
  )
