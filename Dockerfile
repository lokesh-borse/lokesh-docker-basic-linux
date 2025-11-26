# Using a lightweight Linux image
FROM alpine:latest

# Update packages
RUN apk update && apk upgrade

# Installing basic linux utilities
RUN apk add bash coreutils

# Creating a working directory
WORKDIR /app

# Copying a test script
COPY commands.sh /app/commands.sh

# Giving execution permission
RUN chmod +x /app/commands.sh

# Running the script when container starts
CMD ["bash", "/app/commands.sh"]
