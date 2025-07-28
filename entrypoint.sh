#!/bin/sh

echo "Injecting runtime environment variables into env.js..."

# Replace the placeholder with the real value
echo "=== ENTRYPOINT: Injecting MY_URL: ${MY_URL} ==="
sed -i "s|__MY_URL__|${MY_URL}|g" /var/www/html/env.js

echo "Starting NGINX..."
exec nginx -g 'daemon off;'
