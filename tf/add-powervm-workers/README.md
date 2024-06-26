# Add PowerVM workers to Intel cluster

User need to uopdate required vales in data/vars.tfvars file such as username and password of IBM intranet credentials to get access to the PowerVC.
```
auth_url                    = "https://host.net:5000/v3/"
user_name                   = "***@us.ibm.com"
password                    = "***"
```

### Use Terraform command to plan and apply .

  ```
  terraform plan -var-file=data/vars.tfvars
  ```

  ```
  terraform apply -var-file=data/vars.tfvars
  ```

### Configure the DHCP and restart the dhcpd service.

Get the MAC Address and IP Address of the VM created on PowerVC. Update /etc/dhcp/dhcpd.conf with the lease/addresses as shown below.

  ```
  host workerp-0 { hardware ethernet fa:16:3e:0f:95:6b; fixed-address 10.20.177.243; }
  ```

* Restart the dhcpd.
  ```
  systemctl restart dhcpd
  ```
* Restart the Worker node for ignition to start.

* Approve the CSR certificate to add the worker to intel cluster.
  ```
  oc get csr
  ```
  ```
  oc adm certificate approve <certificate-name>
  ```



