# Use the official Nginx image as the base image
FROM nginx:latest

# Expose port 80 to be used by the container
EXPOSE 80

# Copy the Nginx configuration file into the container
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Set the working directory where Nginx will serve files
WORKDIR /usr/share/nginx/html

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]


# # Container image that runs your code
# FROM alpine:3.10

# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# # Make the script executable
# RUN chmod +x /entrypoint.sh

# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]
