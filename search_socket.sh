#!/usr/bin/env zsh

search_directory="freedomGPT"

# Function to search for "socket" and print file content
search_socket() {
  local file="$1"
  
  # Use grep to check if "socket" is present in the file
  if grep -q "socket" "$file"; then
    echo "----- File: $file -----"
    cat "$file"
    echo
  fi
}

# Recursive function to search in a directory
search_recursive() {
  local dir="$1"

  # Loop through each item in the directory
  for item in "$dir"/*; do
    if [[ -f "$item" ]]; then
      # If the item is a file, search for "socket" in its content
      search_socket "$item"
    elif [[ -d "$item" ]]; then
      # If the item is a directory, recursively search in it
      search_recursive "$item"
    fi
  done
}

# Start the recursive search from the specified directory
search_recursive "$search_directory"

