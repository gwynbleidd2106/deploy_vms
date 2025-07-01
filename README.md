# deploy_vms
Bundle of Ansible roles to deploy / configure VMs

# Prerequisites
1. Assuming you have either Proxmox VE or VMWare ESXi
2. Roles designed to deploy VM from template
3. Currently there's 3 prepared ```playbooks``` to deploy admin VM, Nginx VM and PostgreSQL VM

# Configure
1. Edit ```playbook``` in either ```clone_vm_pve``` or ```clone_esxi``` roles
2. Add / remove / replace ```roles``` and ```variables``` according your needs
3. Copy ```playbooks``` to your ansible playbooks dir e. g., in ```/etc/ansible/playbooks```
4. Copy ```roles``` to your ansible roles dir e. g., in ```/etc/ansible/roles```

# Run
  - PVE example:

```ansible-playbook -i ./ansible_roles/clone_vm_pve/roles/clone_vm_pve/inventory/hosts.yml ./ansible_roles/clone_vm_pve/playbooks/clone_admin-vm.yml```
  
  - ESXi example:

```ansible-playbook -i ./ansible_roles/clone_vm_esxi/roles/clone_vm_esxi/inventory/hosts.yml ./ansible_roles/clone_vm_esxi/playbooks/clone_admin-vm.yml```
