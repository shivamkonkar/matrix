#!/bin/sh

echo "Running parent container: $PARENT_CONTAINER"

# Create child containers in parallel using background processes
for i in $(seq 1 3); do
  docker run --rm --name "${PARENT_CONTAINER}_child_$i" alpine:latest /bin/sh -c "echo 'helloworldfrom${PARENT_CONTAINER}'" &
done

# Wait for all background processes to complete
wait
