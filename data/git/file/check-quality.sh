set -eux

# O0 + mem2reg baseline
debuginfo-quality --variables --tsv --range-start-baseline --extend-from-baseline --baseline O0-14-mem2reg/git.o O0-14-mem2reg/git.o > O0-14-mem2reg/git.o-rsb-efb.tsv

# Other versions and levels using above as baseline
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-12/git.o > O1-12/git.o-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-13/git.o > O1-13/git.o-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O1-14/git.o > O1-14/git.o-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --extend-from-baseline --baseline O0-14-mem2reg/git.o O1-14/git.o > O1-14/git.o-rsb-efb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O2-14/git.o > O2-14/git.o-rsb.tsv
debuginfo-quality --variables --tsv --range-start-baseline --baseline O0-14-mem2reg/git.o O3-14/git.o > O3-14/git.o-rsb.tsv
