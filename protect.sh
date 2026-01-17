#!/bin/bash

DB="$(dirname "$0")/superadmin.db"
PANEL_DB="pterodactyl"
USER_ID="$1"

mysql -e "
UPDATE users SET root_admin=0;
"

while read -r ID; do
    mysql -e "UPDATE users SET root_admin=1 WHERE id=$ID;"
done < "$DB"

echo "OK"