#!/bin/bash

# Function to recursively delete files beginning with ._* 
delete_dot_underscore_files() {
    local dir="$1"
    
    # Navigate to the directory
    cd "$dir" || return

    # Delete files beginning with ._* in the current directory
    find . -type f -name "._*" -delete

    # Recursively call the function for subdirectories
    for subdir in */; do
        if [ -d "$subdir" ]; then
            delete_dot_underscore_files "$subdir"
        fi
    done
}

# Starting directory
start_dir="."

# Call the function to delete files beginning with ._* recursively
delete_dot_underscore_files "$start_dir"

echo "Files beginning with ._* deleted successfully."
