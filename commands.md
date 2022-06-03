To change all the directories & subdirectories to 755 (drwxr-xr-x):
```
find /path/to/folder -type d -exec chmod 755 {} \;
```

To change all the files to 644 (-rw-r--r--):
```
find /path/to/folder -type f -exec chmod 644 {} \;
```
