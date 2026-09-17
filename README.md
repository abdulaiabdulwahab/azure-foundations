# azure-foundations
Foundations Project — Build and troubleshoot a Linux web server manually with Azure CLI input Via VS.
Foundations Project — Build and troubleshoot a Linux web server manually with Azure CLI input Via VS. DELETE ALL RESOURCES WHEN COMPLETE.
# Azure Resource Deployment & Troubleshooting Lab

A hands-on Azure project demonstrating how to provision,
configure, validate, intentionally break, troubleshoot,
and restore a Linux web server environment using Azure CLI.

## Skills Demonstrated

- Azure CLI
- Azure Resource Manager
- Azure Virtual Machines
- Azure Virtual Networks
- Subnets
- Network Security Groups
- Linux administration
- NGINX
- Azure Network Watcher
- Azure Activity Log
- Azure troubleshooting
- Bash scripting

## Architecture

Internet
   |
   v
Public IP
   |
   v
Network Security Group
   |
   v
Azure VNet
   |
   v
Subnet
   |
   v
Linux VM
   |
   v
NGINX

## Project Objectives

The objective of this project was not simply to deploy
an Azure VM.

The environment was intentionally misconfigured several
times to practice identifying and resolving real Azure
infrastructure problems.

Troubleshooting scenarios included:

1. HTTP traffic blocked by an NSG rule
2. NGINX service failure
3. Azure deployment/control-plane investigation



## Skills Demonstrated

### Azure
- Azure Resource Groups
- Azure Virtual Machines
- Azure Virtual Networks
- Azure Subnets
- Network Security Groups
- Public IP Addresses
- Azure Resource Manager
- Azure Network Watcher
- Azure Activity Log

### Linux
- Ubuntu
- systemctl
- NGINX
- TCP port validation
- Linux service troubleshooting

### Automation
- Azure CLI
- Bash scripting
- Environment variables
- Repeatable infrastructure deployment

### Troubleshooting
- NSG rule analysis
- Effective security rules
- Network connectivity diagnosis
- Azure control-plane troubleshooting
- Application/service troubleshooting
- Root cause analysis
