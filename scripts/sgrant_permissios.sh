#!/bin/bash

# Find all .sh files in the same directory as this script
find "$(dirname "$0")" -maxdepth 1 -type f -name "*.sh" -print0 | while IFS= read -r -d $'\0' script_path; do
  # Give execute permission to the found script
  chmod +x "$script_path"
  echo "Given execute permission to: $script_path"
done

echo "Finished setting execute permissions for .sh scripts in the script's directory."
