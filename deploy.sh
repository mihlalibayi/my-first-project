#!/bin/bash

echo "🔨 Building Docker image..."
docker build -t my-first-image .

echo "🚀 Running container on port 8080..."
docker run -d -p 8080:80 my-first-image

echo "🌐 Done! Open your browser and go to: http://localhost:8080"

