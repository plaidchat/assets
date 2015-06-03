#!/usr/bin/env bash
# Exit on first error
set -e

# Navigate to our dist directory
cd dist/

# Iterate over our images
for file in $(ls); do
  convert "$file" -resize 70x70 "$file.70.png"
  convert "$file" -resize 30x30 "$file.30.png"
done
