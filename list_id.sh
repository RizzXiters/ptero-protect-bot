#!/bin/bash
DB="$(dirname "$0")/superadmin.db"
[ -s "$DB" ] && cat "$DB" || echo "Kosong"