#!/bin/bash

RG="rg-resource-troubleshooting-lab"
LOCATION="canadacentral"

VNET="vnet-resource-lab"
SUBNET="snet-web"
NSG="nsg-web"

echo "Creating Virtual Network..."

az network vnet create \
    --resource-group "$RG" \
    --name "$VNET" \
    --address-prefixes 10.10.0.0/16 \
    --subnet-name "$SUBNET" \
    --subnet-prefixes 10.10.1.0/24

echo "Creating Network Security Group..."

az network nsg create \
    --resource-group "$RG" \
    --name "$NSG" \
    --location "$LOCATION"

echo "Creating HTTP rule..."

az network nsg rule create \
    --resource-group "$RG" \
    --nsg-name "$NSG" \
    --name AllowHTTP \
    --priority 200 \
    --direction Inbound \
    --access Allow \
    --protocol Tcp \
    --source-address-prefixes Internet \
    --destination-port-ranges 80

echo "Associating NSG with subnet..."

az network vnet subnet update \
    --resource-group "$RG" \
    --vnet-name "$VNET" \
    --name "$SUBNET" \
    --network-security-group "$NSG"