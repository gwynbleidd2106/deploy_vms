# Configure network interfaces


# Prerequisites:
1. assuming you using systemd-networkd
2. configure interfaces


# Configure
1. in ```playbooks/ifaces.yml``` replace hosts with your group
2. in ```playbooks/ifaces.yml``` replace ```lan_iface_name``` with your LAN interfaces name. currently default for QEMU/KVM provided
3. in ```playbooks/ifaces.yml``` replace ```ip_address``` with your LAN interface IP address
3. in ```roles/templates/xxx.j2``` configure your network interface(s), IPs etc
run & enjoy :)
