FROM nginx:latest

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom html
COPY index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80
