# NFTables


# Prerequisites:
1. install nftables
2. place your preconfigured template to VM and apply it


# Configure
1. in ```playbooks/nftables.yml``` replace hosts with your group
2. in ```playbooks/nftables.yml``` provide ```target_name```, it's name of nftables firewall config file placed in ```templates```. configure your rules and save them there
3. in ```playbooks/nftables.yml``` enable firewall logging in systemd journal in var ```enable_logging```
run & enjoy :)
