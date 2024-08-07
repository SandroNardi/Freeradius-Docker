#!/bin/bash

# Define the directory names

CERTS_DIR="/certs"
# USERS_DIR="$CONFIG_dir/mods-config/files/authorize"


# Generate self-signed SSL certificates
openssl req -x509 -newkey rsa:2048 -keyout "$CERTS_DIR/ssl-cert-snakeoil.key" -out "$CERTS_DIR/ssl-cert-snakeoil.pem" -days 365 -nodes -subj "/CN=freeradius"

# Set the correct permissions for the private key
chmod 644 "$CERTS_DIR/ssl-cert-snakeoil.key"
chmod 644 "$CERTS_DIR/ssl-cert-snakeoil.pem"
