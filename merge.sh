#!/bin/bash

# Folder containing TSVs
RESULTS="/home/swalih/Desktop/MD_indiGen_work/maf/result_tsv"

# Output merged file
MERGED="/home/swalih/Desktop/MD_indiGen_work/maf/all_variants_merged.tsv"

# Get the header from the first file
head -n 1 "$RESULTS"/$(ls "$RESULTS" | head -n 1) > "$MERGED"

# Append all data (skip header line)
for f in "$RESULTS"/*.tsv; do
    tail -n +2 "$f" >> "$MERGED"
done

echo "✅ All TSV files merged into: $MERGED"

