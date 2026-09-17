#!/bin/bash

# Azure region where resources will be deployed.
LOCATION="canadacentral"

# Resource group used for the lab.
RG="rg-resource-troubleshooting-lab"

echo "Creating Azure Resource Group..."

az group create \
    --name "$RG" \
    --location "$LOCATION"

echo "Resource Group created."