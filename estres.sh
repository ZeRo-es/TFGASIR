#!/usr/bin/env bash
URL="https://wpluis1-cpajaxcwfheahkcp.spaincentral-01.azurewebsites.net"
CONCURRENTES=50

for i in $(seq 1 $CONCURRENTES); do
  while true; do
    curl -s -o /dev/null "$URL"
  done &
done

wait
