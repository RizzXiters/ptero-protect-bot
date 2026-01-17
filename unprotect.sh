#!/bin/bash

PANEL_ID="$1"
DB="/opt/ptero-protect/superadmin.db"

if [ -z "$PANEL_ID" ]; then
  echo "❌ PANEL ID kosong"
  exit 1
fi

# Hapus ID dari database proteksi (jika ada)
if [ -f "$DB" ]; then
  sed -i "/^$PANEL_ID$/d" "$DB"
fi

# Restore akses normal (hapus force-403 / middleware)
PHP_FILE="/var/www/pterodactyl/app/Http/Middleware/Authenticate.php"

if [ -f "$PHP_FILE.bak" ]; then
  cp "$PHP_FILE.bak" "$PHP_FILE"
fi

# Clear cache Laravel
cd /var/www/pterodactyl || exit
php artisan optimize:clear >/dev/null 2>&1

echo "✅ UNPROTECT sukses untuk PANEL ID: $PANEL_ID"
exit 0