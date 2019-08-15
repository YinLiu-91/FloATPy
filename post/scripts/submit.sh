#!/bin/bash
#COBALT -n 10
#COBALT -t 15
#COBALT -A ATPESC2019
#COBALT -q R.ATPESC2019_0801_1

NODES=`cat $COBALT_NODEFILE | wc -l`
PROCS=$((NODES * 12))

mpirun -f $COBALT_NODEFILE -n $PROCS ./run_cooley

