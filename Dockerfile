# Use a simple web server image to serve the HTML page
FROM nginx:alpine

# Copy the HTML file to the default web directory in the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80
