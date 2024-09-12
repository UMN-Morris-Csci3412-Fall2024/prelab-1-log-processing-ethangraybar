#!/bin/bash

# Capture arguments
content_file=$1
specifier=$2
target_file=$3

# Construct header and footer filenames
header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

# Check if files exist
if [[ ! -f "$content_file" ]]; then
  echo "Content file $content_file does not exist."
  exit 1
fi

if [[ ! -f "$header_file" ]]; then
  echo "Header file $header_file does not exist."
  exit 1
fi

if [[ ! -f "$footer_file" ]]; then
  echo "Footer file $footer_file does not exist."
  exit 1
fi

# Concatenate files into target file
cat "$header_file" "$content_file" "$footer_file" > "$target_file"