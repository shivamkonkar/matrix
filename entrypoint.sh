#!/bin/sh

echo "Running parent container: $PARENT_CONTAINER"

# Create child containers
for i in {1..3}; do
  docker run --rm --name "${PARENT_CONTAINER}_child_$i" alpine:latest /bin/sh -c "echo 'helloworldfrom${PARENT_CONTAINER}'"
done
