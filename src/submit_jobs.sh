#!/bin/bash
NUM_IMGS=5062
rm -r std/err std/out
mkdir -p std/out std/err
for (( i = 1; i <= ${NUM_IMGS}; i++ )) {
	qsub -cwd -o std/out/$i.out -e std/err/$i.out /run.sh ./matlab_batcher.sh runGISTCompute $i,${NUM_IMGS}
}
