# Scenario 1 — HTTP Traffic Blocked by NSG

## Problem

The Azure VM was running and NGINX was active,
but the website could not be reached over port 80.

## Expected Behaviour

curl http://<PUBLIC-IP>

should return:

<h1>Azure Resource Troubleshooting Lab</h1>

## Observed Behaviour

The HTTP request timed out.

## Investigation

<!-- First I verified that the VM was running:

```bash
az vm get-instance-view \
  --resource-group rg-resource-troubleshooting-lab \
  --name vm-web-01 \
  --query instanceView.statuses \
  --output table \

  The VM was healthy.


  I then inspected the NSG rules:

az network nsg rule list \
  --resource-group rg-resource-troubleshooting-lab \
  --nsg-name nsg-web \
  --output table


I discovered:

Rule	Priority	Action
DenyHttpTest	100	Deny
AllowHTTP	200	Allow


The conflicting rule was removed:

az network nsg rule delete \
  --resource-group rg-resource-troubleshooting-lab \
  --nsg-name nsg-web \
  --name DenyHttpTest


Validation
curl http://<PUBLIC-IP>
HTTP connectivity was restored.