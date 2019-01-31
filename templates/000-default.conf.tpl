NameVirtualHost *:80
<VirtualHost *:80>
	ServerName wiki.{{ domainname }}
        Redirect / https://wiki.{{ domainname }}/
</VirtualHost>

<VirtualHost *:80>
	ServerName data.{{ domainname }}
        Redirect / https://data.{{ domainname }}/
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
