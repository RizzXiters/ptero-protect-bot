#!/bin/bash

TEXT="$1"

FILE="/var/www/pterodactyl/resources/views/errors/403.blade.php"

cat > $FILE <<EOF
@extends('layouts.error')

@section('title', '403 Forbidden')

@section('content')
<div style="text-align:center;margin-top:50px">
    <h1 style="font-size:60px">🚫 403</h1>
    <p style="font-size:20px">$TEXT</p>
</div>
@endsection
EOF

php /var/www/pterodactyl/artisan view:clear
php /var/www/pterodactyl/artisan config:clear

echo "OK"