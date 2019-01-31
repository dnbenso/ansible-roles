<IfModule mod_ssl.c>
NameVirtualHost *:443
    <VirtualHost _default_:443>
        ServerAdmin webmaster@localhost
	ServerName data.{{ domainname }}
        DocumentRoot /var/www/html
        AddExternalAuth pwauth /usr/sbin/pwauth
        SetExternalAuthMethod pwauth pipe
        ErrorLog ${APACHE_LOG_DIR}/ssl_error.log
        CustomLog ${APACHE_LOG_DIR}/ssl_access.log combined
        SSLEngine on
        SSLCertificateFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/cert.pem
        SSLCertificateKeyFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/privkey.pem
	SSLCertificateChainFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/chain.pem
        #SSLCertificateFile	/etc/ssl/certs/ssl-cert-snakeoil.pem
        #SSLCertificateKeyFile   /etc/ssl/private/ssl-cert-snakeoil.key
        <FilesMatch "\.(cgi|shtml|phtml|php)$">
                        SSLOptions +StdEnvVars
        </FilesMatch>
        <Directory /usr/lib/cgi-bin>
                        SSLOptions +StdEnvVars
        </Directory>
        BrowserMatch "MSIE [2-6]" \
                        nokeepalive ssl-unclean-shutdown \
                        downgrade-1.0 force-response-1.0
        BrowserMatch "MSIE [17-9]" ssl-unclean-shutdown
        <Directory /var/www/html/internal>
            SSLRequireSSL
            AuthType Basic
            AuthName "PAM Authentication"
            AuthBasicProvider external
            AuthExternal pwauth
            require valid-user
        </Directory>
    </VirtualHost>
</IfModule>

