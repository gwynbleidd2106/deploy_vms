#!/bin/bash

set -e

#### variables list
ansiblePing=$(ansible -i ./inventory.yaml all -m ping)
hosts=(
  "192.168.100.3:5432"  # db_vm_ip:db_vm_port
  "192.168.100.4:80"    # web_vm_ip:web_vm_port
)

if $ansiblePing > /dev/null 2>&1; then
  echo "✅ OK"
else
  echo "❌ FAIL"
  echo "debug log: $ansiblePing"
fi

for i in "${hosts[@]}"; do
  host="${i%%:*}"
  port="${i##*:}"
  tcpCheck=$(nc -z -w2 "$host" "$port")

  if $tcpCheck; then
    echo "✅ OK $i"
  else
    echo "❌ FAIL $i, port $port is not reachable"
  fi
done
