# Build nginx from source with custom modules


# Prerequisites:
1. install nginx from repo, builded version will overwrite it. it's made to keep default / distro specific file and dir path
2. download latest version of MaxMind GeoIP v2, install it
3. download nginx modules: Headers, VTS, GeoIP V2
4. download nginx source, extract and build with mentioned modules
5. configure nginx to use installed modules
6. configure site to use installed modules


# Configure
1. in ```playbooks/build_nginx.yml``` replace hosts with your group
2. in ```roles/build_nginx/vars/nginx.yml``` replace nginx version if necessary
3. in ```roles/build_nginx/vars/nginx.yml``` set your trusted network CIDR and prometheus IP. for security reasons VTS and GeoIP2 modules endpoints are available only from specified networks
4. in ```roles/build_nginx/vars/nginx.yml``` set your site name in ```site_name``` variable
5. in ```roles/build_nginx/templates/default.conf.j2``` placed default site with all modules enabled, merge your site with it's config file and rename it same way as ```site_name``` variable
6. register account on maxmind site, obtain AccountID and License Key, provide them in ```roles/build_nginx/templates/GeoIP.conf.j2```
7. in ```roles/build_nginx/templates/nginx.conf.j2``` include reconfigured same was as in RHEL meaning sites only with .conf extension will work
8. in ```defaults/main.yml``` set variable ```enroll_cert``` to ```true``` if need to install ssl / tls certificate. also provide email and cloudflare token in ```vars/certbot.yml```
run & enjoy :)
