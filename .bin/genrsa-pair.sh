#!/bin/bash
# This will write private.pem and public.pem in the current directory
# The default key strenght is 2048 bits
# usage:
# # ./gen-jwt-rsa-keys.sh mykey
# # ls
# gen-jwt-rsa-keys.sh  mykey-private.key  mykey-public.pem
# first time you have to give execution permission or use bash and the filename
# # chmod +x gen-jwt-rsa-keys.sh
KEYNAME=${1:-jwtrsa}
openssl genrsa -out $KEYNAME-private.key 2048 && openssl rsa -in $KEYNAME-private.key -outform PEM -pubout -out $KEYNAME-public.pem