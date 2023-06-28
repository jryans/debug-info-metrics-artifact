set -eux

# O0 + mem2reg baseline
debuginfo-quality --variables --tsv --range-start-baseline --extend-from-baseline --baseline O0-14-mem2reg/git.o O0-14-mem2reg/git.o > O0-14-mem2reg/git-rsb-efb.tsv

# Other versions and levels using above as baseline
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-12/git.dSYM > O1-12/git-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-13/git.dSYM > O1-13/git-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-14/git.dSYM > O1-14/git-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --extend-from-baseline --baseline O0-14-mem2reg/git.o O1-14/git.dSYM > O1-14/git-rsb-efb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O2-14/git.dSYM > O2-14/git-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O3-14/git.dSYM > O3-14/git-rsb.tsv
