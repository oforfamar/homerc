#!/bin/bash

# Set the new owner and group
new_owner="newuser"
new_group="newgroup"
folder="/path/to/folder"

# Find and change permissions for directories
find $folder -type d -exec chown $new_owner:$new_group {} \; -exec chmod 0775 {} +

# Find and change permissions for files
find $folder -type f -exec chmod 0664 {} +
