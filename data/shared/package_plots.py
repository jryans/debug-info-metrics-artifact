import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

target_name = None
friendly_name = None
data_path_prefix = ""

def configure(target, friendly, path_prefix=""):
  global target_name, friendly_name, data_path_prefix
  target_name = target
  friendly_name = friendly
  data_path_prefix = path_prefix

def load_data():
  assert target_name
  assert friendly_name

  def read_run(file, variant):
    df = pd.read_table(f"{data_path_prefix}{file}")
    # Clean up column names
    df.columns = df.columns.str.strip()
    # Sort by name to aid matching across datasets
    df = df.sort_values("Name", ignore_index=True)
    # Summarise across inlined call sites with arithmetic mean
    df = df.groupby("Name", as_index=False).mean(numeric_only=True)
    return df

  o0_15_df = read_run(f"O0-15/{target_name}.tsv", "Clang 15, O0")
  o0_15_m2r_df = read_run(f"O0-15-mem2reg/{target_name}.tsv", "Clang 15, O0 + mem2reg")
  o0_15_m2r_efb_df = read_run(f"O0-15-mem2reg/{target_name}-efb.tsv", "Clang 15, O0 + mem2reg + KE")
  o2_12_df = read_run(f"O2-12/{target_name}.tsv", "Clang 12, O2")
  o2_13_df = read_run(f"O2-13/{target_name}.tsv", "Clang 13, O2")
  o2_14_df = read_run(f"O2-14/{target_name}.tsv", "Clang 14, O2")
  o1_15_df = read_run(f"O1-15/{target_name}.tsv", "Clang 15, O1")
  o1_15_efb_df = read_run(f"O1-15/{target_name}-efb.tsv", "Clang 15, O1 + KE")
  o2_15_df = read_run(f"O2-15/{target_name}.tsv", "Clang 15, O2")
  o2_15_efb_df = read_run(f"O2-15/{target_name}-efb.tsv", "Clang 15, O2 + KE")
  o3_15_df = read_run(f"O3-15/{target_name}.tsv", "Clang 15, O3")
  o3_15_efb_df = read_run(f"O3-15/{target_name}-efb.tsv", "Clang 15, O3 + KE")

  # Manufacture virtual data frame representing full coverage
  full_df = o0_15_df.copy()
  full_df["Cov (B)"] = full_df["Scope (B)"]
  full_df["Cov (L)"] = full_df["Scope (L)"]
  full_df["Flt Cov (L)"] = full_df["Src Scope (L)"]
  full_df["Adj Cov (L)"] = full_df["Src Scope (L)"]

  # Restrict all data frames to common names they all share
  common_names = (
    set(full_df["Name"]) &
    set(o0_15_df["Name"]) &
    set(o0_15_m2r_df["Name"]) &
    set(o0_15_m2r_efb_df["Name"]) &
    set(o2_12_df["Name"]) &
    set(o2_13_df["Name"]) &
    set(o2_14_df["Name"]) &
    set(o1_15_df["Name"]) &
    set(o1_15_efb_df["Name"]) &
    set(o2_15_df["Name"]) &
    set(o2_15_efb_df["Name"]) &
    set(o3_15_df["Name"]) &
    set(o3_15_efb_df["Name"])
  )
  print(f"Common names: {len(common_names)}")
  def common_only(df, variant):
    diff = len(df) - len(df[df["Name"].isin(common_names)])
    print(f"Dropped {diff} unique names from {variant}")
    return df[df["Name"].isin(common_names)]
  full_df = common_only(full_df, "Defined region")
  o0_15_df = common_only(o0_15_df, "Clang 15, O0")
  o0_15_m2r_df = common_only(o0_15_m2r_df, "Clang 15, O0 + mem2reg")
  o0_15_m2r_efb_df = common_only(o0_15_m2r_efb_df, "Clang 15, O0 + mem2reg + KE")
  o2_12_df = common_only(o2_12_df, "Clang 12, O2")
  o2_13_df = common_only(o2_13_df, "Clang 13, O2")
  o2_14_df = common_only(o2_14_df, "Clang 14, O2")
  o1_15_df = common_only(o1_15_df, "Clang 15, O1")
  o1_15_efb_df = common_only(o1_15_efb_df, "Clang 15, O1 + KE")
  o2_15_df = common_only(o2_15_df, "Clang 15, O2")
  o2_15_efb_df = common_only(o2_15_efb_df, "Clang 15, O2 + KE")
  o3_15_df = common_only(o3_15_df, "Clang 15, O3")
  o3_15_efb_df = common_only(o3_15_efb_df, "Clang 15, O3 + KE")

  # Order is important here!
  # Some data transformations rely on
  # `iloc[1]` to access the baseline,
  # `diff` to access KE vs. not, etc.
  # Re-check all transformations when changing the order.
  compilations_df = pd.concat([
    full_df,
    o0_15_df,
    o0_15_m2r_df,
    o0_15_m2r_efb_df,
    o2_12_df,
    o2_13_df,
    o2_14_df,
    o1_15_df,
    o1_15_efb_df,
    o2_15_df,
    o2_15_efb_df,
    o3_15_df,
    o3_15_efb_df,
  ], keys=[
    "Defined region",
    "Clang 15, O0",
    "Clang 15, O0 + mem2reg",
    "Clang 15, O0 + mem2reg + KE",
    "Clang 12, O2",
    "Clang 13, O2",
    "Clang 14, O2",
    "Clang 15, O1",
    "Clang 15, O1 + KE",
    "Clang 15, O2",
    "Clang 15, O2 + KE",
    "Clang 15, O3",
    "Clang 15, O3 + KE",
  ], names=[
    "Variant",
    "Row",
  ])

  return compilations_df

def normalise(df):
  # Compute various coverage ratios
  df["CB / SB"] = df["Cov (B)"] / df["Scope (B)"]
  df["CL / SL"] = df["Cov (L)"] / df["Scope (L)"]
  # df["ACL / SL"] = df["Adj Cov (L)"] / df["Scope (L)"]
  df["CL / SSL"] = df["Cov (L)"] / df["Src Scope (L)"]
  df["FCL / SSL"] = df["Flt Cov (L)"] / df["Src Scope (L)"]
  # Line table may differ between runs, giving different scope line counts
  # Use the largest scope line count from any run to recompute ratio
  df["Max Scope (L)"] = df.groupby("Name")["Scope (L)"].transform("max")
  df["CL / MSL"] = df["Cov (L)"] / df["Max Scope (L)"]
  # Normalise values to baseline (Clang 15, O0 + mem2reg)
  # Chooses the correct row for `mem2reg` even in the presence of NaN
  df["Baseline Cov (L)"] = df.groupby("Name")["Adj Cov (L)"].transform(lambda x: x.iloc[2])
  with np.errstate(all="ignore"):
    df["ACL / BCL"] = df["Adj Cov (L)"] / df["Baseline Cov (L)"]

def coverage_by_compiler_version(df):
  df = df.copy()
  df["Order"] = df.sort_values(by="FCL / SSL", ascending=False).groupby("Variant").cumcount()
  variants = df.index.get_level_values("Variant")
  df = df[
    variants.str.contains("Defined") |
    (
      variants.str.contains("O2") &
      ~(variants.str.contains("KE"))
    )
  ]
  g = sns.relplot(
    df,
    x="Order",
    y="FCL / SSL",
    hue="Variant",
    kind="line",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.125, 0.50),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Variable value source line coverage ({friendly_name})",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Covered source lines normalised to defined region",
    ybound=(0, 1.002),
  )

def coverage_by_optimisation_level(df):
  df = df.copy()
  df["Order"] = df.sort_values(by="FCL / SSL", ascending=False).groupby("Variant").cumcount()
  variants = df.index.get_level_values("Variant")
  df = df[
    variants.str.contains("Defined") |
    (
      variants.str.contains("Clang 15") &
      ~(variants.str.contains("KE"))
    )
  ]
  g = sns.relplot(
    df,
    x="Order",
    y="FCL / SSL",
    hue="Variant",
    kind="line",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.125, 0.45),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Variable value source line coverage ({friendly_name})",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Covered source lines normalised to defined region",
    ybound=(0, 1.002),
  )

def coverage_with_ke_sorted_independently(df):
  df = df.copy()
  df["Order"] = df.sort_values(by="FCL / SSL", ascending=False).groupby("Variant").cumcount()
  variants = df.index.get_level_values("Variant")
  df = df[
    variants.str.contains("Defined") |
    (
      variants.str.contains("O[01]") &
      variants.str.contains("Clang 15")
    )
  ]
  g = sns.relplot(
    df,
    x="Order",
    y="FCL / SSL",
    hue="Variant",
    kind="line",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.125, 0.45),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Variable value source line coverage ({friendly_name})",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Covered source lines normalised to defined region",
    ybound=(0, 1.002),
  )

def coverage_with_ke_sorted_consistently(df):
  df = df.copy()
  variants = df.index.get_level_values("Variant")
  df["Variant Label"] = variants # Keep the variant label accessible after `.loc`
  df = df[variants.str.contains("Clang 15") & variants.str.contains("O2")]
  variant_labels = df.index.unique("Variant").to_list()

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Variable value source line coverage with knowledge extension ({friendly_name})")

  df["Order"] = df.sort_values(by="FCL / SSL", ascending=False).groupby("Variant").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df.loc[variant_labels[0]],
    x="Order",
    y="FCL / SSL",
    hue="Variant Label",
    hue_order=[
      variant_labels[0],
      "_" + variant_labels[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df.loc[variant_labels[1]],
    x="Order",
    y="FCL / SSL",
    hue="Variant Label",
    hue_order=[
      "_" + variant_labels[0], # Remove from legend
      variant_labels[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Covered source lines normalised to defined region")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="FCL / SSL", ascending=False).groupby("Variant").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df.loc[variant_labels[0]],
    x="Order",
    y="FCL / SSL",
    hue="Variant Label",
    hue_order=[
      variant_labels[0],
      "_" + variant_labels[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df.loc[variant_labels[1]],
    x="Order",
    y="FCL / SSL",
    hue="Variant Label",
    hue_order=[
      "_" + variant_labels[0], # Remove from legend
      variant_labels[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Covered source lines normalised to defined region")
  ax2.set_ybound(0, 1.002)

def coverage_achievability(df):
  df = df.copy()
  df = df.loc["Clang 15, O0 + mem2reg"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O0 + mem2reg"
  df["Defined source lines (our approach)"] = df["Src Scope (L)"] / df["Scope (L)"]
  df["Scope source lines (other tools)"] = 1.0
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=["Defined source lines (our approach)", "Scope source lines (other tools)"],
    var_name="Cov Type",
    value_name="Cov Value",
  )
  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  g = sns.relplot(
    df,
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    kind="line",
  )
  sns.move_legend(
    g,
    "upper left",
    bbox_to_anchor=(0.1, 0.8),
    frameon=True,
    shadow=True,
    title=None,
  )
  ax = g.facet_axis(0, 0)
  x = ax.lines[0].get_xdata()
  scope_y = ax.lines[0].get_ydata()
  defined_y = ax.lines[1].get_ydata()
  ax.fill_between(x, scope_y, defined_y, color="gray", alpha=0.5)
  ax.annotate(
    "Unachievable\n“coverage”",
    xy=(0.875, 0.9),
    xycoords="axes fraction",
    horizontalalignment="center",
    bbox=dict(boxstyle="round", facecolor="m"),
  )
  g.set(
    title=f"Coverage achievability ({friendly_name}, Clang 15)",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Portion of scope source lines",
    ybound=(0, 1.002),
  )

def coverage_comparison_ratios_o0_sorted_independently(df):
  df = df.copy()
  df = df.loc["Clang 15, O0 + mem2reg"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O0 + mem2reg"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source lines (other tools)"] = df["CL / SL"]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=[
      "Filtered covered / defined source lines (our approach)",
      "Raw covered / scope source lines (other tools)",
    ],
    var_name="Cov Type",
    value_name="Cov Value",
  )
  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  g = sns.relplot(
    df,
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    kind="line",
  )
  sns.move_legend(
    g,
    "upper left",
    bbox_to_anchor=(0.125, 0.7),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Coverage metric comparison ({friendly_name}, Clang 15, O0)",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Coverage ratio (multiple metrics)",
    ybound=(0, 1.002),
  )

def coverage_comparison_ratios_o2_sorted_independently(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source lines (other tools)"] = df["CL / SL"]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=[
      "Filtered covered / defined source lines (our approach)",
      "Raw covered / scope source lines (other tools)",
    ],
    var_name="Cov Type",
    value_name="Cov Value",
  )
  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  g = sns.relplot(
    df,
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    kind="line",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.125, 0.2),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Coverage metric comparison ({friendly_name}, Clang 15, O2)",
    xlabel="Variable index (sorted by coverage)",
    xbound=(0, df["Order"].max()),
    ylabel="Coverage ratio (multiple metrics)",
    ybound=(0, 1.002),
  )

def coverage_comparison_ratios_o2_sorted_consistently_old_metric(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Adjusted covered / defined source lines (our approach)"] = df["ACL / BCL"]
  # Using max scope in the denominator here to ensure it matches the baseline for
  # variables that cover the full scope. The baseline (O0-mem2reg) tends to
  # include a few extra lines than optimised versions, so max scope is more fair
  # comparison than the original scope from an optimised dataset.
  # Once we integrate source analysis to determine allowable lines, we may be able
  # to avoid the max here.
  df["Raw covered / max scope source lines (other tools)"] = df["CL / MSL"]
  coverage_types = [
    "Adjusted covered / defined source lines (our approach)",
    "Raw covered / max scope source lines (other tools)",
  ]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=coverage_types,
    var_name="Cov Type",
    value_name="Cov Value",
  )

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Coverage metric comparison ({friendly_name}, Clang 15, O2)")

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df[df["Cov Type"] == "Adjusted covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df[df["Cov Type"] == "Raw covered / max scope source lines (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Coverage ratio (multiple metrics)")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df[df["Cov Type"] == "Adjusted covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df[df["Cov Type"] == "Raw covered / max scope source lines (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Coverage ratio (multiple metrics)")
  ax2.set_ybound(0, 1.002)

def coverage_comparison_ratios_o2_sorted_consistently_new_metric_same_denominators(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source lines (other tools simulation)"] = df["CL / SSL"]
  coverage_types = [
    "Filtered covered / defined source lines (our approach)",
    "Raw covered / scope source lines (other tools simulation)",
  ]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=coverage_types,
    var_name="Cov Type",
    value_name="Cov Value",
  )

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Coverage metric comparison ({friendly_name}, Clang 15, O2)")

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df[df["Cov Type"] == "Raw covered / scope source lines (other tools simulation)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Coverage ratio (multiple metrics)")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df[df["Cov Type"] == "Raw covered / scope source lines (other tools simulation)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Coverage ratio (multiple metrics)")
  ax2.set_ybound(0, 1.002)

def coverage_comparison_ratios_o2_sorted_consistently_new_metric_different_denominators_max_scope(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  # Using max scope in the denominator here to ensure it matches the baseline for
  # variables that cover the full scope. The baseline (O0-mem2reg) tends to
  # include a few extra lines than optimised versions, so max scope is more fair
  # comparison than the original scope from an optimised dataset.
  # Once we integrate source analysis to determine allowable lines, we may be able
  # to avoid the max here.
  df["Raw covered / max scope source lines (other tools simulation)"] = df["CL / MSL"]
  coverage_types = [
    "Filtered covered / defined source lines (our approach)",
    "Raw covered / max scope source lines (other tools simulation)",
  ]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=coverage_types,
    var_name="Cov Type",
    value_name="Cov Value",
  )

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Coverage metric comparison ({friendly_name}, Clang 15, O2)")

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df[df["Cov Type"] == "Raw covered / max scope source lines (other tools simulation)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Coverage ratio (multiple metrics)")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df[df["Cov Type"] == "Raw covered / max scope source lines (other tools simulation)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Coverage ratio (multiple metrics)")
  ax2.set_ybound(0, 1.002)

def coverage_comparison_ratios_o2_sorted_consistently_new_metric_different_denominators_own_scope(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source lines (other tools)"] = df["CL / SL"]
  coverage_types = [
    "Filtered covered / defined source lines (our approach)",
    "Raw covered / scope source lines (other tools)",
  ]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=coverage_types,
    var_name="Cov Type",
    value_name="Cov Value",
  )

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Coverage metric comparison ({friendly_name}, Clang 15, O2)")

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df[df["Cov Type"] == "Raw covered / scope source lines (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Coverage ratio (multiple metrics)")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df[df["Cov Type"] == "Raw covered / scope source lines (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Coverage ratio (multiple metrics)")
  ax2.set_ybound(0, 1.002)

def coverage_comparison_ratios_o2_sorted_consistently_new_metric_different_denominators_bytes(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source bytes (other tools)"] = df["CB / SB"]
  coverage_types = [
    "Filtered covered / defined source lines (our approach)",
    "Raw covered / scope source bytes (other tools)",
  ]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=coverage_types,
    var_name="Cov Type",
    value_name="Cov Value",
  )

  # Create figure with multiple axes
  fig, axs = plt.subplots(1, 2, figsize=(10, 5))
  [ax1, ax2] = axs
  fig.suptitle(f"Coverage metric comparison ({friendly_name}, Clang 15, O2)")

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("first")
  sns.lineplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax1,
  )
  sns.scatterplot(
    df[df["Cov Type"] == "Raw covered / scope source bytes (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax1,
  )
  ax1.legend(title=False)
  ax1.set_xlabel("Variable index (sorted by coverage)")
  ax1.set_xbound(0, df["Order"].max())
  ax1.set_ylabel("Coverage ratio (multiple metrics)")
  ax1.set_ybound(0, 1.002)

  df["Order"] = df.sort_values(by="Cov Value", ascending=False).groupby("Cov Type").cumcount()
  df["Order"] = df.groupby("Name")["Order"].transform("last")
  sns.scatterplot(
    df[df["Cov Type"] == "Filtered covered / defined source lines (our approach)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      coverage_types[0],
      "_" + coverage_types[1], # Remove from legend
    ],
    ax=ax2,
  )
  sns.lineplot(
    df[df["Cov Type"] == "Raw covered / scope source bytes (other tools)"],
    x="Order",
    y="Cov Value",
    hue="Cov Type",
    hue_order=[
      "_" + coverage_types[0], # Remove from legend
      coverage_types[1],
    ],
    ax=ax2,
  )
  ax2.legend(title=False)
  ax2.set_xlabel("Variable index (sorted by coverage)")
  ax2.set_xbound(0, df["Order"].max())
  ax2.set_ylabel("Coverage ratio (multiple metrics)")
  ax2.set_ybound(0, 1.002)

def coverage_comparison_ratios_o2_distribution(df):
  df = df.copy()
  df = df.loc["Clang 15, O2"]
  # Revive `Variant` column to assist `melt` below
  df["Variant"] = "Clang 15, O2"
  df["Filtered covered / defined source lines (our approach)"] = df["FCL / SSL"]
  df["Raw covered / scope source lines (other tools)"] = df["CL / SL"]
  df = df.melt(
    id_vars=["Name", "Variant"],
    value_vars=[
      "Filtered covered / defined source lines (our approach)",
      "Raw covered / scope source lines (other tools)",
    ],
    var_name="Cov Type",
    value_name="Cov Value",
  )
  g = sns.displot(
    df,
    x="Cov Value",
    hue="Cov Type",
    multiple="dodge",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.1, 0.9),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title=f"Coverage metric comparison ({friendly_name}, Clang 15, O2)",
    xlabel="Coverage ratio (multiple metrics)",
    xbound=(0, 1.02),
    ylabel="Variables",
    ybound=(0, None),
  )

def arithmetic_mean_coverage(df):
  df = df.copy()
  df = df.groupby("Variant")["FCL / SSL"].mean().reset_index()
  df = df.sort_values(by="FCL / SSL", ascending=False).reset_index()
  df = df[df["Variant"].str.contains("O[02]") & ~(df["Variant"].str.contains("KE"))]
  g = sns.catplot(
    df,
    x="Variant",
    y="FCL / SSL",
    kind="bar",
    height=3.0,
    aspect=4 / 3,
  )
  g.set(
    title=f"Variable value source line coverage ({friendly_name})",
    xlabel="Compiler version and optimisation level",
    xticklabels=["\n"*(i%2) + l for i,l in enumerate(df["Variant"])],
    ylabel="Arith. mean coverage norm. to defined region",
  )
