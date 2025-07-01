# Scripts


# Prerequisites:
1. created dir to store scripts
2. copy scripts into it
3. configure cron to run accordingly


# Configure
1. in ```playbooks/scripts.yml``` replace hosts with your group
3. in ```roles/templates/xxx.sh.j2``` add your scripts
3. in ```roles/defaults/main.yml``` provide script file names to copy in variable ```scripts```
run & enjoy :)
