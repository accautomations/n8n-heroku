FROM n8nio/n8n:latest

USER root

# Set the working directory
WORKDIR /home/node/packages/cli

# Install additional npm libraries
RUN npm install --save pdf-lib

# Copy the entrypoint script to the container
COPY ./entrypoint.sh /entrypoint.sh

# Ensure the script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
