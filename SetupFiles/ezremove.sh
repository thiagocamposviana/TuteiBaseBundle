echo "Enter the new site dir:"
read sitedir

echo "Enter mysql root username:"
read dbuser
echo "Enter mysql root password:"
read dbpass

echo "DB name to be removed:"
read dbname

find /etc/hosts -exec sed -i "s/127.0.0.1       ${sitedir}//g" {} \;

find /etc/hosts -exec sed -i "/^$/d" {} \;

rm -Rf ${sitedir}

mysql -u ${dbuser} -p${dbpass} -e "DROP DATABASE ${dbname};"
mysql -u ${dbuser} -p${dbpass} -e "DROP USER '${dbname}'@'localhost';"

a2dissite ${sitedir}.conf

rm /etc/apache2/sites-available/${sitedir}.conf

/etc/init.d/apache2 restart
