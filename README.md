# Tutei Base for Ubuntu

This extension has been created in order to clean install ez publish in Ubuntu using the Github master version.

# Install instructions

Warning: Be sure to check if you have apache, mysql and php with all extensions listed in https://confluence.ez.no/display/EZP52/Requirements installed. Also keep in mind that this is a script to be used for development only, do not use this in the prod server.

Also make sure you don't have a folder named ezpublish-community below /var/www

Copy SetupFiles/ezinstall.sh to /var/www/

run it as root:

 sudo sh ezinstall.sh

To login use: admin / publish

It uses a really basic bundle that I am developing right now: https://github.com/thiagocamposviana/TuteiBaseBundle

By the way, as long it is an ubuntu script, I suppose that the imagemagic path is /usr/bin/convert, so I didn't change this from my settings.

At the end of the script it opens your default browser showing the new installation, you can close your console after that.

The script to remove the installation is the same:

SetupFiles/ezremove.sh

Run it as:

sudo sh ezremove.sh in /var/www


Buy me a coffee :)

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MRZUXXB5RVSVC)

