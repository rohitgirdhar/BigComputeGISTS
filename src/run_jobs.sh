#!/bin/bash
NUM_IMGS=5062
for (( i = 1; i <= ${NUM_IMGS}; i++ )) {
	./run.sh ./matlab_batcher.sh runGISTCompute $i,${NUM_IMGS}
}
