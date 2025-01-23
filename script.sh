#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Variables
REPO_URL="https://github.com/Sangram0105/python-app.git"
BRANCH="main"
TARGET_DIR="python-app" 
TAG=$(git ls-remote --tags "$REPO_URL" | grep -E 'refs/tags/release-' | tail -1 | awk -F'/' '{print $NF}')

# Check if a release tag is available
if [ -z "$TAG" ]; then
    echo "No release tags found in the repository. Exiting."
    exit 1
fi

echo "Latest release tag found: $TAG"

# Clone the repository and checkout the latest release tag
if [ -d "$TARGET_DIR" ]; then
    echo "Removing existing directory: $TARGET_DIR"
    rm -rf "$TARGET_DIR"
fi

echo "Cloning the repository..."
git clone --branch "$BRANCH" "$REPO_URL" "$TARGET_DIR"
cd "$TARGET_DIR"

echo "Checking out the latest release tag: $TAG"
git checkout "$TAG"

# Build and start the Docker Compose environment
echo "Starting Docker Compose setup..."
docker-compose up --build -d

echo "Deployment completed successfully."