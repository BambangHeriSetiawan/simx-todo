 #!/bin/bash
composer require filament/filament:"^3.2" -W &&
php artisan filament:install --panels &&
php artisan vendor:publish --tag=filament-config &&
php artisan vendor:publish --tag=filament-actions-translations &&
php artisan vendor:publish --tag=filament-forms-translations &&
php artisan vendor:publish --tag=filament-infolists-translations &&
php artisan vendor:publish --tag=filament-notifications-translations &&
php artisan vendor:publish --tag=filament-tables-translations &&
php artisan vendor:publish --tag=filament-translations &&
php artisan vendor:publish --tag=blade-icons &&
php artisan migrate:fresh &&
php artisan migrate &&
php artisan make:filament-user
