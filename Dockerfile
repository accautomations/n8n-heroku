FROM n8nio/n8n:latest

USER root

# Set the working directory
WORKDIR /home/node/packages/cli

# Install additional npm libraries
RUN npm install --save pdf-lib

# Copy and set permissions for entrypoint script
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

# Set the entrypoint
CMD ["/entrypoint.sh"]
