import numpy as np
import pandas as pd

import matplotlib as mpl
import matplotlib.pyplot as plt

import seaborn as sns
import seaborn.objects as so

def coverage_by_package_o1(df):
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
      variants.str.contains("Clang 15, O1") &
      ~(variants.str.contains("KE"))
    )
  ]
  g = sns.relplot(
    df,
    x="Order",
    y="FCL / SSL",
    hue="Package",
    kind="line",
  )
  sns.move_legend(
    g,
    "center left",
    bbox_to_anchor=(0.125, 0.60),
    frameon=True,
    shadow=True,
    title=None,
  )
  g.set(
    title="Variable value source line coverage (Clang 15, O1, multiple packages)",
    xlabel="Variable normalised index (sorted by coverage)",
    xbound=(0, 1),
    ylabel="Covered source lines normalised to defined region",
    ybound=(0, 1.002),
  )
