echo "Enter the new site dir:"
read sitedir

echo "Enter apache group"
read apachegroup

echo "Enter your username"
read username

echo "Enter mysql root username:"
read dbuser
echo "Enter mysql root password:"
read dbpass

echo "DB name to be created:"
read dbname

if [ ! -d ezpublish-community ]:
then
    git clone https://github.com/ezsystems/ezpublish-community.git
else
    cd ezpublish-community
    git remote update
    cd ..
fi


if [ ! -d ezpublish-community/ezpublish_legacy ]:
then
    cd ezpublish-community
    git clone https://github.com/ezsystems/ezpublish-legacy.git ezpublish_legacy
    cd ..
else
    cd ezpublish-community/ezpublish_legacy
    git remote update
    cd ../..
fi

if [ ! -d ezpublish-community/vendor ]:
then
    cd ezpublish-community
    curl -s http://getcomposer.org/installer | php
    php composer.phar install --prefer-dist
    cd ..
else
    cd ezpublish-community
    php composer.phar update --prefer-dist
    cd ..
fi



cp -r ezpublish-community ${sitedir}




# adds your user to apache group
usermod -a -G ${apachegroup} ${username}

# makes your user in the apache group the owner of the new site dir
chown -R ${apachegroup}:${apachegroup} ${sitedir}

# everything created inside this folder will be set to apache user group
chmod g+s ${sitedir}

setfacl -Rm u:${apachegroup}:rwx ${sitedir}
setfacl -Rm d:u:${apachegroup}:rwx ${sitedir}

setfacl -Rm u:${username}:rwx ${sitedir}
setfacl -Rm d:u:${username}:rwx ${sitedir}


find ${sitedir} -type d -exec chmod 775 {} \;
find ${sitedir} -type f -exec chmod 664 {} \;

cd ${sitedir}

mkdir src/Tutei

git clone https://github.com/thiagocamposviana/TuteiBaseBundle.git src/Tutei/BaseBundle

rm -Rf ezpublish/cache/*

cp -r src/Tutei/BaseBundle/SetupFiles SetupFiles

find SetupFiles -name "*.*" -exec sed -i "s/\[SITEURL\]/${sitedir}/g" {} \;
find SetupFiles -name "*.*" -exec sed -i "s/\[DBNAME\]/${dbname}/g" {} \;
find SetupFiles -name "*.*" -exec sed -i "s/\[DBPASS\]/${dbname}/g" {} \;
find SetupFiles -name "*.*" -exec sed -i "s/\[DBUSER\]/${dbname}/g" {} \;

find ezpublish/config -name "*.*" -exec sed -i "s/eZDemoBundle/TuteiBaseBundle/g" {} \;


find ezpublish/EzPublishKernel.php -exec sed -i "s/            new EzSystemsDemoBundle(),/            new EzSystemsDemoBundle(),\n            new TuteiBaseBundle(),/g" {} \;


find ezpublish/EzPublishKernel.php -exec sed -i "s/EzSystemsDemoBundle;/EzSystemsDemoBundle;\nuse Tutei\\\BaseBundle\\\TuteiBaseBundle;/g" {} \;


cp -r SetupFiles/override ezpublish_legacy/settings
cp -r SetupFiles/siteaccess ezpublish_legacy/settings
cp SetupFiles/ezpublish_dev.yml ezpublish/config



echo "tutei_base:
    resource: \"@TuteiBaseBundle/Resources/config/routing.yml\"
    prefix:   /\n\n" | cat - ezpublish/config/routing.yml > /tmp/out && mv /tmp/out ezpublish/config/routing.yml 

php ezpublish/console assets:install --symlink --env=dev web
php ezpublish/console ezpublish:legacy:assets_install --symlink web
php ezpublish/console assetic:dump --env=dev web

cd ezpublish_legacy

php bin/php/ezpgenerateautoloads.php

mysql -u ${dbuser} -p${dbpass} -e "CREATE DATABASE ${dbname} CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql -u ${dbuser} -p${dbpass} -e "CREATE USER '${dbname}'@'localhost' IDENTIFIED BY '${dbname}';"
mysql -u ${dbuser} -p${dbpass} -e "GRANT ALL PRIVILEGES ON ${dbname}.* TO '${dbname}'@'localhost' WITH GRANT OPTION;"

mysql -u ${dbuser} -p${dbpass} ${dbname} < kernel/sql/mysql/kernel_schema.sql

mysql -u ${dbuser} -p${dbpass} ${dbname} < kernel/sql/common/cleandata.sql


php ezpm.php import ../src/Tutei/BaseBundle/SetupFiles/content.ezpkg

php ezpm.php  install content


cd ..

rm -Rf SetupFiles


find . -type d -exec chmod 775 {} \;
find . -type f -exec chmod 664 {} \;
chown -R ${apachegroup}:${apachegroup} .

echo "<VirtualHost *:80>\n
ServerAdmin webmaster@localhost\n
ServerName ${sitedir}\n
 DocumentRoot /var/www/${sitedir}/web\n
   <Directory /var/www/${sitedir}/web>\n
        Options FollowSymLinks\n
        AllowOverride None\n
    </Directory>\n
    \n
    \n
    # Environment.\n
    # Possible values: \"prod\" and \"dev\" out-of-the-box, other values possible with proper configuration\n
    # Defaults to \"prod\" if omitted\n
    SetEnv ENVIRONMENT \"dev\"\n
\n
    # Whether to use Symfony's ApcClassLoader.\n
    # Possible values: 0 or 1\n
    # Defaults to 0 if omitted\n
    #SetEnv USE_APC_CLASSLOADER 0\n
\n
    # Prefix used when USE_APC_CLASSLOADER is set to 1.\n
    # Use a unique prefix in order to prevent cache key conflicts\n
    # with other applications also using APC.\n
    # Defaults to \"ezpublish\" if omitted\n
    #SetEnv APC_CLASSLOADER_PREFIX \"ezpublish\"\n
\n
    # Whether to use debugging.\n
    # Possible values: 0 or 1\n
    # Defaults to 0 if omitted, unless ENVIRONMENT is set to: \"dev\"\n
    #SetEnv USE_DEBUGGING 0\n
\n
    # Whether to use Symfony's HTTP Caching.\n
    # Disable it if you are using an external reverse proxy (e.g. Varnish)\n
    # Possible values: 0 or 1\n
    # Defaults to 1 if omitted, unless ENVIRONMENT is set to: \"dev\"\n
    #SetEnv USE_HTTP_CACHE 1\n
\n
    # Defines the proxies to trust.\n
    # Separate entries by a comma\n
    # Example: \"proxy1.example.com,proxy2.example.org\"\n
    # By default, no trusted proxies are set\n
    #SetEnv TRUSTED_PROXIES \"127.0.0.1\"\n
    \n
    \n
    <IfModule mod_php5.c>\n
        php_admin_flag safe_mode Off\n
        php_admin_value register_globals 0\n
        php_value magic_quotes_gpc 0\n
        php_value magic_quotes_runtime 0\n
        php_value allow_call_time_pass_reference 0\n
    </IfModule>\n
    \n
    DirectoryIndex index.php\n
    <IfModule mod_rewrite.c>\n
        RewriteEngine On\n
 \n
        # Uncomment in FastCGI mode or when using PHP-FPM, to get basic auth working.\n
        #RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]\n
 \n
        # v1 rest API is on Legacy\n
        RewriteRule ^/api/[^/]+/v1/ /index_rest.php [L]\n
 \n
        # If using cluster, uncomment the following two lines:\n
        #RewriteRule ^/var/([^/]+/)?storage/images(-versioned)?/.* /index_cluster.php [L]\n
        #RewriteRule ^/var/([^/]+/)?cache/(texttoimage|public)/.* /index_cluster.php [L]\n
 \n
        RewriteRule ^/var/([^/]+/)?storage/images(-versioned)?/.* - [L]\n
        RewriteRule ^/var/([^/]+/)?cache/(texttoimage|public)/.* - [L]\n
        RewriteRule ^/design/[^/]+/(stylesheets|images|javascript|fonts)/.* - [L]\n
        RewriteRule ^/share/icons/.* - [L]\n
        RewriteRule ^/extension/[^/]+/design/[^/]+/(stylesheets|flash|images|lib|javascripts?)/.* - [L]\n
        RewriteRule ^/packages/styles/.+/(stylesheets|images|javascript)/[^/]+/.* - [L]\n
        RewriteRule ^/packages/styles/.+/thumbnail/.* - [L]\n
        RewriteRule ^/var/storage/packages/.* - [L]\n
 \n
        # Makes it possible to place your favicon at the root of your\n
        # eZ Publish instance. It will then be served directly.\n
        RewriteRule ^/favicon\.ico - [L]\n
        # Uncomment the line below if you want you favicon be served\n
        # from the standard design. You can customize the path to\n
        # favicon.ico by changing /design/standard/images/favicon\.ico\n
        #RewriteRule ^/favicon\.ico /design/standard/images/favicon.ico [L]\n
        RewriteRule ^/design/standard/images/favicon\.ico - [L]\n
 \n
        # Give direct access to robots.txt for use by crawlers (Google,\n
        # Bing, Spammers..)\n
        RewriteRule ^/robots\.txt - [L]\n
 \n
        # Platform for Privacy Preferences Project ( P3P ) related files\n
        # for Internet Explorer\n
        # More info here : http://en.wikipedia.org/wiki/P3p\n
        RewriteRule ^/w3c/p3p\.xml - [L]\n
 \n
        # Uncomment the following lines when using popup style debug in legacy\n
        #RewriteRule ^/var/([^/]+/)?cache/debug\.html.* - [L]\n
 \n
        # Following rule is needed to correctly display assets from eZ Publish5 / Symfony bundles\n
        RewriteRule ^/bundles/ - [L]\n
 \n
        # Additional Assetic rules for eZ Publish 5.1 / 2013.4 and higher.\n
        ## Don't forget to run php ezpublish/console assetic:dump --env=prod\n
        ## and make sure to comment these out in dev environment.\n
        RewriteRule ^/css/.*\.css - [L]\n
        RewriteRule ^/js/.*\.js - [L]\n
 \n
        RewriteRule .* /index.php\n
    </IfModule>\n
</VirtualHost>" > "/etc/apache2/sites-available/${sitedir}.conf"

a2ensite ${sitedir}.conf

echo "127.0.0.1       ${sitedir}" >> /etc/hosts

/etc/init.d/apache2 restart


sudo -u ${username} xdg-open http://${sitedir}
