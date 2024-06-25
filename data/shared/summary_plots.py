import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

def load_data(target_name, data_path_prefix):
  dfs = []

  def read_run(file, variant):
    df = pd.read_table(f"{data_path_prefix}{file}")

    # Clean up column names
    df.columns = df.columns.str.strip()
    # Sort by name to aid matching across datasets
    df = df.sort_values("Name", ignore_index=True)
    # Summarise across inlined call sites with arithmetic mean
    df = df.groupby("Name", as_index=False).mean(numeric_only=True)

    df.variant = variant
    dfs.append(df)

  read_run(f"clang/15/O2/{target_name}.tsv", ("Clang", "15", "O2", "No KE"))

  # Check names present in each compilation for differences
  print("# Names")
  common_names = set(dfs[0]["Name"])
  for df in dfs:
    common_names = common_names & set(df["Name"])
  print(f"Common names: {len(common_names)}")
  all_names = set()
  for df in dfs:
    all_names = all_names | set(df["Name"])
  all_names_df = pd.DataFrame({ "Name": list(all_names) })
  print(f"All names: {len(all_names)}")
  print()

  def name_diffs(df):
    print(f"## {df.variant}")
    missing_all_diff = len(all_names_df[~all_names_df["Name"].isin(df["Name"])])
    print(f"{missing_all_diff} names from other compilations missing from this compilation")
    common_diff = len(df[~df["Name"].isin(common_names)])
    print(f"{common_diff} names missing from one or more other compilations")
    print()

  for df in dfs:
    name_diffs(df)

  def add_missing_rows(df):
    variant = df.variant
    # Create additional dataset with missing rows
    missing_df = all_names_df[~all_names_df["Name"].isin(df["Name"])].copy()
    missing_df["Cov (B)"] = 0
    missing_df["Scope (B)"] = 1
    missing_df["Cov (L)"] = 0
    missing_df["Scope (L)"] = 1
    missing_df["Flt Cov (L)"] = 0
    missing_df["Src Scope (L)"] = 1
    print(f"Adding {len(missing_df)} missing names to {variant}")
    # Append to existing data and resort
    df = pd.concat(
      [
        df,
        missing_df,
      ],
      ignore_index=True,
    )
    assert len(df) == len(all_names_df), "Names still missing"
    df = df.sort_values("Name", ignore_index=True)
    df.variant = variant
    return df

  # Add any missing rows so that all compilations contain the union of all names
  for (i, df) in enumerate(dfs):
    dfs[i] = add_missing_rows(df)

  def df_keys(df):
    keys = df.variant
    (family, version, level, ke) = keys
    variant = f"{family} {version}, {level}"
    if ke == "Has KE":
      variant += " + KE"
    return (variant)

  compilations_df = pd.concat(
    dfs,
    keys=map(df_keys, dfs),
    names=[
      "Variant",
      "Row",
    ],
  )

  return compilations_df

def normalise(df):
  # Compute various coverage ratios
  df["CB / SB"] = df["Cov (B)"] / df["Scope (B)"]
  df["CL / SL"] = df["Cov (L)"] / df["Scope (L)"]
  df["CL / SSL"] = df["Cov (L)"] / df["Src Scope (L)"]
  df["FCL / SSL"] = df["Flt Cov (L)"] / df["Src Scope (L)"]

def coverage_by_package_o2(df):
  df = df.copy()
  grouped = df.sort_values(by="FCL / SSL", ascending=False).groupby([
    "Package",
    "Variant",
  ])
  df["Order"] = grouped.cumcount() / grouped.count()["Name"]
  variants = df.index.get_level_values("Variant")
  df = df[
    # variants.str.contains("Defined") |
    (
      variants.str.contains("Clang 15, O2") &
      ~(variants.str.contains("KE"))
    )
  ]
  g = sns.relplot(
    df,
    x="Order",
    y="FCL / SSL",
    hue="Package",
    kind="line",
    height=2.5,
    aspect=3.5 / 2.5,
  )
  sns.move_legend(
    g,
    "lower left",
    bbox_to_anchor=(0.1675, 0.2225),
    fontsize="x-small",
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title="Variable value source line coverage\n(Clang 15, O2, multiple packages)",
    xlabel="Variable normalised index (sorted by coverage)",
    xbound=(0, 1),
    ylabel="Covered source lines\nnormalised to defined region",
    ybound=(0, 1.002),
  )
