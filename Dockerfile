# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML file and the image to the container
COPY index.html /usr/share/nginx/html/index.html
COPY A_modern,_artistic_representation_of_a_futuristic_.png /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
