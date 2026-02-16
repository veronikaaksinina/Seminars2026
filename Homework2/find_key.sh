#!/bin/bash
if [ -f "super_secret_key.txt" ]; then
    # Если файл найден
    echo "Found it!" >> found.log
else
    # Если файл не найден
    ls super_secret_key.txt 2>/dev/null
    echo "I did my best"
fi
