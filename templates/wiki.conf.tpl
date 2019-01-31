<IfModule mod_ssl.c>
NameVirtualHost *:443
    <VirtualHost _default_:443>

            ServerName wiki.{{ domainname }}
            ServerAdmin admin@wiki.{{ domainname }}
            DocumentRoot /var/www/wiki

            # According MWiki Manual:Security
            php_flag register_globals off

            ErrorLog ${APACHE_LOG_DIR}/wiki.error.log
            CustomLog ${APACHE_LOG_DIR}/wiki.access.log combined

            SSLEngine on
            SSLCertificateFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/cert.pem
            SSLCertificateKeyFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/privkey.pem
            SSLCertificateChainFile /etc/letsencrypt/live/{{ hostname }}.{{ domainname }}/chain.pem
            #SSLCertificateFile /etc/ssl/certs/ssl-cert-snakeoil.pem
            #SSLCertificateKeyFile /etc/ssl/private/ssl-cert-snakeoil.key

            <FilesMatch "\.(cgi|shtml|phtml|php)$">
                    SSLOptions +StdEnvVars
            </FilesMatch>

            <Directory /var/www/wiki>
                    Order allow,deny
                    Allow from all
                    Require all granted
            </Directory>

            # According to MWiki Manual:Security
            <Directory /var/www/wiki/images>
                    # Ignore .htaccess files
                    AllowOverride None
                    # Serve HTML as plaintext, don't execute SHTML
                    AddType text/plain .html .htm .shtml .php .phtml .php5
                    # Don't run arbitrary PHP code.
                    php_admin_flag engine off
                    # If you've other scripting languages, disable them too.
            </Directory>

            #According to MWiki Manual:Security
            <Directory /var/www/wiki/images/deleted>
                    Deny from all
                    AllowOverride AuthConfig Limit
                    Require local
            </Directory>

    </VirtualHost>

</IfModule>
