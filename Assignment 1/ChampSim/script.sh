#!/bin/bash
input="scripting/trace_name_fnl.txt"
SECONDS=0
while IFS= read -r line
do
  duration=$SECONDS
  echo "Started trace $line at time $(($duration / 60)) minutes and $(($duration % 60)) seconds."
  bash run_champsim_working.sh hashed_perceptron-FNL-MMA280520-next_line-spp_dev-no-lru-1core 50 50 $line
  duration=$SECONDS
  echo "Finished Trace $line in $(($duration / 60)) minutes and $(($duration % 60)) seconds."
done < "$input"
