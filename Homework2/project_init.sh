#!/bin/bash

if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi

PROJECT_NAME=$1

mkdir -p "$PROJECT_NAME"

mkdir -p "$PROJECT_NAME"/data
mkdir -p "$PROJECT_NAME"/scripts
mkdir -p "$PROJECT_NAME"/results

touch "$PROJECT_NAME"/data/raw_data.txt
chmod 600 "$PROJECT_NAME"/data/raw_data.txt

echo "#!/bin/bash" > "$PROJECT_NAME"/scripts/run_analysis.sh
echo "echo \"Hello from $PROJECT_NAME\"" >> "$PROJECT_NAME"/scripts/run_analysis.sh

chmod +x "$PROJECT_NAME"/scripts/run_analysis.sh

echo "Project '$PROJECT_NAME' created successfully!"
