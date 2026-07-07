#!/bin/sh
set -e

echo "🚀 Starting Laravel on Render..."

# Run migrations
echo "Running database migrations..."
php artisan migrate --force

# Optional: Clear & cache for better performance
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "✅ Migrations completed. Starting application..."

# Run whatever your normal start command is
exec "$@"