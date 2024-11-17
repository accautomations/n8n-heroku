FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

# Add package.json and package-lock.json
COPY ./package.json ./package-lock.json ./
RUN npm install

# Ensure libraries are globally available
RUN cp -a node_modules/. /usr/local/lib/node_modules/

# Copy entrypoint script
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
