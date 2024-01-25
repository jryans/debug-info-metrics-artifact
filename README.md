## Artifact

This is the artifact for the [CC 2024 paper][paper]:

Accurate Coverage Metrics for Compiler-Generated Debugging Information

by J. Ryan Stinnett and Stephen Kell.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10568392.svg)](https://doi.org/10.5281/zenodo.10568392)

## Usage

The `data` directory includes various scripts and notebooks used to produce the
figures included in the paper.

The `figures` directory contains the figures as shown in the published paper.

The basic pipeline to reproduce a figure for a given program under analysis
(e.g. Git which is used in most figures) is:

1. Check out project source at commit in the table below
2. Run `prepare.sh` in the project source directory
3. Run `build.sh` in the project source directory
4. Run `check-quality.sh` in the `data/[project]` directory of this repo
5. Use the notebook in `data/[project]`

Some scripts currently use system-specific paths to locate compilers and other
tools, so some modifications may be needed. Review `vars.sh` and adjust path
values as needed.

## Requirements

Source code for each project under analysis will be needed. For the paper, the
following projects and commits were used:

| Project | Commit |
| ------- | ------ |
| Dash    | b00288fd28c1b39d0f1531b6e6d86de59de4be8d |
| FFmpeg  | c06d3d24047206f9c11bfc5849544b960e5d68eb |
| Git     | bd5df96b7916c1e8a9300ab477aec047b3901cd4 |
| libbz2  | 323678a0d655eb3720618dd7f0dd403eef5e6999 |
| FLINT   | c08c06bf202d1b154742eecc183b8a3d13cddf62 |
| tar     | cf16a2394572301496b618a857e71371020af643 |

Most published figures focus on the Git codebase, so consider starting there.

In addition, some other tools are invoked by scripts here:

| Tools    | Commit |
| -------- | ------ |
| [dbgcov] | 1b89156b7eb3fefad610e432859da21eebbe8046 |
| [debuginfo-quality] | 2a1a0dfc2325b7c210998692d219fcb0bf708e91 |
| [incomplete-debuginfo] | 0df40cb8e1166b4203ecf2dddbb1e304d5772511 |

The following compiler versions are used:

- Clang 12.0.0
- Clang 13.0.0
- Clang 14.0.0
- Clang 15.0.0
- Clang 16.0.0
- Clang 17.0.1
- GCC 10.5.0
- GCC 11.4.0
- GCC 12.3.0
- GCC 13.1.0

[paper]:
  https://doi.org/10.1145/3640537.3641578
[dbgcov]:
  https://github.com/stephenrkell/dbgcov
[debuginfo-quality]:
  https://github.com/jryans/debuginfo-quality/tree/debug-info-metrics
[incomplete-debuginfo]:
  https://github.com/jryans/incomplete-debuginfo/tree/debug-info-metrics
