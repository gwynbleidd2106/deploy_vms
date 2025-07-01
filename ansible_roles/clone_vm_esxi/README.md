# Clone VM VMWare ESXi


# Prerequisites:
0. assuming you already have install Debian VM which will used as template / clone
0.1. make sure ansible user created, ssh key added
0.2. make sure sudo package installed, ansible user configured to execute sudo passwordless
0.3. make sure template VM has static IP
1. clone this VM as new
2. enroll mentioned roles on this VM


# Configure
1. in ```playbooks/clone_xxx.yml``` replace hosts with your group
2. in ```playbooks/clone_xxx.yml``` provide VM name of template VM in var ```clone_name```
3. in ```playbooks/clone_xxx.yml``` provide VM name of target VM in var ```target_name```
4. in ```roles/inventory/hosts.yml``` provide ```esxi_ip```, ```esxi_user```, ```esxi_password```, ```esxi_hostname``` and ```datastore_path``` (which is ESXi RAID storage name) vars or pass them using git env. those will be used to auth agains PVE host to clone VM
5. in ```roles/inventory/hosts.yml``` provide template VM static IP in var ```cloned_vm```


# Optional
1. in ```playbooks/clone_xxx.yml``` provide power on/off order and delay in vars ```vm_startup_order``` and ```vm_startup_enabled```
2. in ```playbooks/clone_xxx.yml``` provide required amount of CPU Cores in ```vm_cores```
2. in ```playbooks/clone_xxx.yml``` provide set required amount of RAM in ```vm_ram```
3. in ```playbooks/clone_xxx.yml``` provide your RAID storage name in var ```vm_extra_disk``` to create extra disk and attach it to this VM
run & enjoy :)
