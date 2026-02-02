#!/bin/bash
START_TIME=$(date +%s)
echo "script executed at: $TIMESTAMP"
sleep 10
END _TIME=$(date +%s)
TOTAL_TIME=$((END_TIME -$START_TIME))
echo "script executed in : $TOTAL_TIME"