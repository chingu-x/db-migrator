#!/bin/bash

if [ ! -d "migrations" ]; then
  echo "No migrations found. Exiting..."
  exit 1
fi

echo "Migrations found. Attempting to run..."
exec yarn migrate