#!/bin/bash

set -euo pipefail

for dir in base res hpa volumes pv config secret; do
    echo Testing ${dir}...
    kubectl apply -f ${dir}/kuard.yml
    sleep 1
    kubectl delete -f ${dir}/kuard.yml
done

# Give Kubernetes time to delete all resources.
sleep 3

output=$(kubectl get all | wc -l)

if [[ "$output" -ne 2 ]]; then
    echo "Assertion failed: Output is $output (expected 2)."
    exit 1
fi

echo "Success!"
