# Select our container version
# We chose Alpine because it is very lightweight
# Latest version found: https://hub.docker.com/_/nginx/
FROM nginx:1.25.3-alpine

# Set an environment variable just for my name
ENV MyName = "Gabriel_Browning"

# Copy our created htm to the nginx Alpine location necessary
COPY ./src/html /usr/share/nginx/html

# Open our port for html
# We map our port from localhost:blahblah to container port 80 when building, but we use container port internally
EXPOSE 80/tcp

## Command Processing ##
# Our first list of commands
CMD ["nginx","-g","daemon off;"]