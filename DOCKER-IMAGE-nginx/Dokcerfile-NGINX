# Use the official Ubuntu as a parent image
FROM ubuntu:20.04

# Update the package list and install Nginx
RUN apt-get update && apt-get install -y nginx

# Remove the default Nginx index.html file
RUN rm -f /var/www/html/index.nginx-debian.html

# Copy custom static files or configuration (optional)
# COPY ./index.html /var/www/html/

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]



Breakdown:
FROM ubuntu:20.04: Uses Ubuntu 20.04 as the base image.
RUN apt-get update && apt-get install -y nginx: Updates the package list and installs Nginx.
RUN rm -f /var/www/html/index.nginx-debian.html: Removes the default Nginx welcome page (optional).
COPY ./index.html /var/www/html/: Optionally, you can copy your custom HTML files into the Nginx web directory.
EXPOSE 80: Exposes port 80 for HTTP traffic.
CMD ["nginx", "-g", "daemon off;"]: Runs Nginx in the foreground to keep the container running.



