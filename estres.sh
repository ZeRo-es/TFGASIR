#!/usr/bin/env bash
URL="https://wpluis1-cpajaxcwfheahkcp.spaincentral-01.azurewebsites.net"  # cambia esto
CONCURRENTES=50  # puedes subirlo a 100 o más

for i in $(seq 1 $CONCURRENTES); do
  while true; do
    curl -s -o /dev/null "$URL"
  done &
done

wait