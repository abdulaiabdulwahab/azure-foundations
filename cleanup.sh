#!/bin/bash

RG="rg-resource-troubleshooting-lab"

echo "Deleting lab environment..."

az group delete \
    --name "$RG" \
    --yes \
    --no-wait

echo "Deletion initiated."
