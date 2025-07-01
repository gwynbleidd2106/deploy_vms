# Clone VM Proxmox VE


# Prerequisites:
0. assuming you already have install Debian VM which will used as template / clone
0.1. make sure ansible user created, ssh key added
0.2. make sure sudo package installed, ansible user configured to execute sudo passwordless
1. clone this VM as new
2. enroll mentioned roles on this VM


# Configure
1. in ```playbooks/clone_xxx.yml``` replace hosts with your group
2. in ```playbooks/clone_xxx.yml``` provide VMID of template VM in var ```clone_vmid```
3. in ```playbooks/clone_xxx.yml``` provide VM name of template VM in var ```clone_name```
4. in ```playbooks/clone_xxx.yml``` provide VMID of target VM in var ```target_vmid```
5. in ```playbooks/clone_xxx.yml``` provide VM name of target VM in var ```target_name```
6. in ```roles/inventory/hosts.yml``` provide ```pve_host```, ```pve_user``` and ```pve_password``` vars or pass them using git env. those will be used to auth agains PVE host to clone VM


# Optional
1. in ```playbooks/clone_xxx.yml``` provide power on/off order and delay in vars ```vm_startup_order``` and ```vm_startup_enabled```
2. in ```playbooks/clone_xxx.yml``` provide required amount of CPU Cores in ```vm_cores```
2. in ```playbooks/clone_xxx.yml``` provide set required amount of RAM in ```vm_ram```
3. in ```playbooks/clone_xxx.yml``` provide your RAID storage name in var ```vm_extra_disk``` to create extra disk and attach it to this VM
run & enjoy :)
