#!/usr/bin/env bash

echo "Generating .env file"
sed -E -e "s/password_placeholder/$(openssl rand -hex 10)/" env.example >.env
