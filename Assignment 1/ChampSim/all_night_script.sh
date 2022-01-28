#!/bin/bash
SECONDS=0

#trace_input="scripting/trace_name_trimmed.txt"
#for i in hashed_perceptron-D_JOLT_2short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_6short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_8short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_10short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_8associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_32associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_48associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_64associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_10mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_15mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_20mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_30mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_5distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_15distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_20distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_25distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_30distahead-next_line-spp_dev-no-lru-1core; do
#  while read line;  do
#    bash run_champsim_working.sh $i 50 50 $line
#    echo "BINARY $i TRACE $line COMPLETED"
#  done < "$trace_input"
#  echo "All Traces for BINARY$i COMPLETED"
#done


trace_input="scripting/trace_name.txt"
  while read line;  do
    bash run_champsim_working.sh hashed_perceptron-FNL-MMA-next_line-spp_dev-no-lru-1core 50 50 $line &
    echo "BINARY $i TRACE $line COMPLETED"
  done < "$trace_input"
  wait
  echo "All Traces for BINARY$i COMPLETED"

#trace_input="scripting/trace_name_trimmed.txt"
#for i in hashed_perceptron-D_JOLT-quarter_next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT-half_size_next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT-double_next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT-quadruple_next_line-spp_dev-no-lru-1core; do
#  while read line;  do
#    bash run_champsim_working.sh $i 50 50 $line
#    echo "BINARY $i TRACE $line COMPLETED"
#  done < "$trace_input"
#  echo "All Traces for BINARY$i COMPLETED"
#done


#bin_input="scripting/bin_names.txt"
#SECONDS=0
#for i in hashed_perceptron-D_JOLT_2short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_6short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_8short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_10short_15long-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_8associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_32associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_48associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-D_JOLT_64associativefallback-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_10mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_15mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_20mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_30mmafilter-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_5distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_15distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_20distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_25distahead-next_line-spp_dev-no-lru-1core hashed_perceptron-FNL-MMA280520_30distahead-next_line-spp_dev-no-lru-1core; do
#  trace_input="scripting/trace_name_trimmed.txt"
#  while IFS= read -r line
#  do
#    #duration=$SECONDS
#    echo "For bin $i Hello $line"
#    #bash run_champsim_working.sh hashed_perceptron-FNL-MMA280520-next_line-spp_dev-no-lru-1core 50 50 $line
#    #duration=$SECONDS
#    #echo "Finished Trace $line"
#  done < "$trace_input"
#done
