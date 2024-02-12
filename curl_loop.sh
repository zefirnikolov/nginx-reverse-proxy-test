#!/bin/bash

# File to store the results
OUTPUT_FILE="curl_results.txt"

# Clear the output file if it already exists
> "$OUTPUT_FILE"

# Loop 50 times
for i in {1..50}; do
  echo "Request $i" >> "$OUTPUT_FILE"
  curl http://localhost >> "$OUTPUT_FILE"
  echo -e "\n" >> "$OUTPUT_FILE"
done

echo "Completed 50 requests."

