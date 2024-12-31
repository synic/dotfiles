p() {
    local result
    result=$(~/bin/project_finder.py "$@")
    if [ $? -eq 0 ]; then
        cd "$result"
    fi
}
```
