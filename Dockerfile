# Dockerfile: Used to set up the container for your custom action

# Use Docker-in-Docker base image
FROM docker:latest

# Set up the working directory inside the container
WORKDIR /app

# Copy necessary scripts or files into the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the script executable
RUN chmod +x /app/entrypoint.sh

# Set entrypoint to the script
ENTRYPOINT ["/app/entrypoint.sh"]
