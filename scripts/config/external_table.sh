#!/bin/bash
gcloud auth login --enable-gdrive-access
for file in $(find . -type f -name "*.def"); do
  # Process each file here
  echo "Processing file: $file"
  # Check if table exists
  bq show "clingen-stage:clinvar_curator.$(basename "$file" .def)" >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Table exists, updating..."
    bq update --external_table_definition="$file" "clingen-stage:clinvar_curator.$(basename "$file" .def)"
  else
    echo "Table does not exist, creating..."
    bq mk --external_table_definition="$file" "clingen-stage:clinvar_curator.$(basename "$file" .def)"
  fi
done
