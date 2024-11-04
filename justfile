# Justfile

# Variables
# IMAGE_NAME := "fastapi-uv:latest"

# List 📜 all recipes (default)
help:
    @just --list

# Boring 😑 Hello world
default:
    echo 'Hello, world!'


# Run in development mode
run:
    go run main.go

# Build the application
build:
    #!/bin/bash
    cd ./src/
    # Get the version from git describe
    VERSION=$(git describe --tags --abbrev=4 --always)
    # Build the application with the version information
    go build -ldflags "-X main.version=${VERSION}" -o $(basename $PWD)
    echo -e "\nBuilt app $(basename $PWD), version ${VERSION}\n"

# Run the application
start:
    @./$(basename $PWD)

#  Build and Start the application
build-start: build start

# Check the application
get:
    http :${PORT}
