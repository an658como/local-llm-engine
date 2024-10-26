#!/usr/bin/env bash

# Assign the first argument to a variable
model_name=$1

# Check if the argument is provided
if [ -z "$model_name" ]; then
  echo "Error: No model name provided. Usage: ./script.sh <model_name>"
  exit 1
fi

# build the ollama container
docker compose up -d

# health check

# Make the request and capture the HTTP response code
response=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:11434)

echo $response

# Check if the response code is 200
if [ "$response" -eq 200 ]; then
  echo "Success: The endpoint returned a 200 response."
  # Run your code for a successful response here
  echo "Pulling the requested model: $model_name"
  docker exec -it ollama ollama pull "$model_name"
else
  echo "Error: The endpoint returned an error response. Code: $response"
  # Optionally, you can include actions to handle other response codes here
fi

# Create an alias to the container ollama
alias ollama='docker exec -it ollama ollama'