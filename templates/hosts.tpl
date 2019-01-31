127.0.0.1	localhost

# The following lines are desirable for IPv6 capable hosts
::1	localhost	ip6-localhost	ip6-loopback
ff02::1	ip6-allnodes
ff02::2	ip6-allrouters
127.0.1.1	ubuntu
127.0.1.1	{{ inventory_hostname_short }}.novalocal	{{ inventory_hostname_short }}

# [DNB 14-Nov-2018] Added via ansible
{{ services_ip }} services services.{{ domainname }} data data.{{ domainname }} wiki wiki.{{ domainname }}
{{ legacy_ip }} legacy.{{ domainname }} legacy
{{ login_ip }} login.{{ domainname }} login
{{ w1_ip }} w1.{{ domainname }} w1
{{ w2_ip }} w2.{{ domainname }} w2
{{ w3_ip }} w3.{{ domainname }} w3
{{ w4_ip }} w4.{{ domainname }} w4
{{ w5_ip }} w5.{{ domainname }} w5
