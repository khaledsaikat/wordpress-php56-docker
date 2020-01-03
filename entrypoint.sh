#!/bin/bash

# Proper access to the containers filesystem
chown -R www-data:www-data .

exec "$@"
