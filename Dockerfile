# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the build folder from your local machine to the Nginx web root directory in the container
COPY ./build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]