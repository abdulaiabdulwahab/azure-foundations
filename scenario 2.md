<!--
Network Works but Application Doesn't

I Stopped NGINX:

az vm run-command invoke \
  --resource-group "$RG" \
  --name "$VM" \
  --command-id RunShellScript \
  --scripts "sudo systemctl stop nginx"

Then:

curl --connect-timeout 5 "http://$PUBLIC_IP"
It fails again.

I logged into the vm via the azure control plan and ran script:

az vm run-command invoke \
  --resource-group "$RG" \
  --name "$VM" \
  --command-id RunShellScript \
  --scripts '
    systemctl is-active nginx
    sudo ss -lntp | grep :80 || true
  '
Output was inactive

Fixing it required running NGINX again:

az vm run-command invoke \
  --resource-group "$RG" \
  --name "$VM" \
  --command-id RunShellScript \
  --scripts "sudo systemctl start nginx"

Retest:
curl "http://$PUBLIC_IP"
Server page was up and running




>