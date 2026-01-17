#!/bin/bash
DB="$(dirname "$0")/superadmin.db"
ID="$1"

sed -i "/^$ID$/d" "$DB"