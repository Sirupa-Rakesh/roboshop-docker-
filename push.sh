#!/bin/bash

USERNAME="rakesh9121"

services=("mongodb" "catalogue" "frontend" "user" "cart" "mysql" "shipping" "payment")

for service in "${services[@]}"; do
  echo "Tagging $service..."
  docker tag $service:latest $USERNAME/$service:latest
  echo "Pushing $service..."
  docker push $USERNAME/$service:latest
done

echo "✅ All images pushed successfully to rakesh9121!"


#chmod +x push.sh
#./push.sh