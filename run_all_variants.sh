#!/bin/bash

# Define input and output directories
VARSTORE="/home/swalih/Desktop/MD_indiGen_work/maf/varStore"
RESULTS="/home/swalih/Desktop/MD_indiGen_work/maf/result_tsv"

# Ensure output folder exists
mkdir -p "$RESULTS"

# Loop through each JSON file in varStore
for file in "$VARSTORE"/*.json; do
    base=$(basename "$file" .json)

    echo "Processing: $base.json ..."

    # Run your conversion script with proper arguments
    bash /home/swalih/Desktop/MD_indiGen_work/maf/varID_joint_flatten_gnomad.sh "$file" --data-type joint -o "$RESULTS"

done

echo "✅ All JSON files converted to TSV and saved in $RESULTS"

