# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx config (vhost and main config)
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/vhost.conf /etc/nginx/conf.d/vhost.conf

RUN mkdir -p /var/www/project
# Copy the website content to the correct location in the container
COPY ./src /var/www/project

# Expose port 80 to allow external access to the server
EXPOSE 80

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
