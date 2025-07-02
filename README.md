# deploy_vms
Bundle of Ansible roles to deploy / configure VMs


# Prerequisites
1. Assuming you have either Proxmox VE or VMWare ESXi
2. Roles designed to deploy VM from template
3. Currently there's 3 prepared ```playbooks``` to deploy Admin VM, Nginx VM and PostgreSQL VM


# Configure
1. Edit ```playbook``` in either ```clone_vm_pve``` or ```clone_esxi``` roles
2. Add / remove / replace ```roles``` and ```variables``` according your needs
3. Admin VM have ```script``` and ```crons``` to health check all VMs. you can find it in ```scripts/roles/templates/check_services.sh```. update if needed
4. Copy ```playbooks``` to your ansible playbooks dir e. g., in ```~/.ansible/playbooks```
5. Copy ```roles``` to your ansible roles dir e. g., in ```~/.ansible/roles```


# Run
  - PVE - Deploy all VMs:

```ansible-playbook -i ~/.ansible/roles/clone_vm_pve/inventory/hosts.yml ~/.ansible/playbooks/clone_admin-vm.yml```
```ansible-playbook -i ~/.ansible/roles/clone_vm_pve/inventory/hosts.yml ~/.ansible/playbooks/clone_db-vm.yml```
```ansible-playbook -i ~/.ansible/roles/clone_vm_pve/inventory/hosts.yml ~/.ansible/playbooks/clone_web-vm.yml```
  
  - ESXi - Deploy all VMs:

```ansible-playbook -i ~/.ansible/roles/clone_vm_esxi/inventory/hosts.yml ~/.ansible/playbooks/clone_admin-vm.yml```
```ansible-playbook -i ~/.ansible/roles/clone_vm_esxi/inventory/hosts.yml ~/.ansible/playbooks/clone_db-vm.yml```
```ansible-playbook -i ~/.ansible/roles/clone_vm_esxi/inventory/hosts.yml ~/.ansible/playbooks/clone_web-vm.yml```
