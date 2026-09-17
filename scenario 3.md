<!--
Suppose a resource deployment/update fails.

Run:

az monitor activity-log list \
  --resource-group "$RG" \
  --offset 1h \
  --status Failed \
  --output table

Output contained a failed deployment where VM size I wanted to delpoy in canada central was not available

View list of VMs by location and publisher Via:

az vm image list \
  --location "$LOCATION" \
  --publisher Canonical \
  --all \
  --output table
->