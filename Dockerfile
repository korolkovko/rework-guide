FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files
COPY rework-guide.html /usr/share/nginx/html/rework-guide.html
COPY rework-logo.svg /usr/share/nginx/html/rework-logo.svg

# Seed pictures (will be copied to volume on first run)
COPY pictures/ /seed-pictures/

# Entrypoint
COPY entrypoint.sh /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
