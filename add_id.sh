#!/bin/bash
DB="$(dirname "$0")/superadmin.db"
ID="$1"

grep -qx "$ID" "$DB" && exit 1
echo "$ID" >> "$DB"