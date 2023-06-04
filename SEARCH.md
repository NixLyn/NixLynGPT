# Documentation of steps taken

Download freedomgpt dmg and pulldown source code from github

---

## Starting point


--> if brew wget are not installed run ###
```
dan@Spider % /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
dan@Spider % brew install wget
```

--> run the following to download, extract.
```
dan@Spider % wget https://github.com/ohmplatform/FreedomGPT/archive/refs/tags/v1.1.3.tar.gz
dan@Spider % tar xzvf v1.1.3.tar.gz
```

--> create an executeable file, write script to search for pattern. ensure it is in same folder and run
    ---> ensure that everything is in one folder
```
dan@Spider % touch search_socket.sh && vi search_socket.sh


#!/usr/bin/env zsh

search_directory="FreedomGPT-1.1.3"

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

---
## Truncated
```
![Screenshot](SS/server%201.jpeg)
```
```
![Screenshot](SS/client_conn%201.jpeg)
```
---

---> Files of interest from output
File {Server}: freedomGPT/docker-app/server.js 
File {Client connect from front-end}: freedomGPT/docker-app/src/app/screens/Main.tsx

### to be continued soon

```


```
---
