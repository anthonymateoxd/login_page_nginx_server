# FROM nginx:alpine

# RUN rm /etc/nginx/conf.d/default.conf

# COPY nginx.conf /etc/nginx/conf.d/

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
# Use official Nginx image as base
FROM nginx:alpine

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files (if any, e.g., login page)
# COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
