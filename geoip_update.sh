# update geoip country database, so we can use crontab later.

#!/bin/bash

# make tmp dir
geotmpdir=$(mktemp -d)
OLDPWD="${PWD}"
cd "${geotmpdir}"

# copy database from remote and change name; remember to change license_key to yours.
wget "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country-CSV&license_key=xxx&suffix=zip" -O GeoLite2-Country-CSV.zip

# extract database
/usr/lib/xtables-addons/xt_geoip_dl

# move to db dir
dir="$(ls)"
cd $dir

# copy db to usr/share/xt_geoip
/usr/lib/xtables-addons/xt_geoip_build -D /usr/share/xt_geoip

# remove old  tmp
cd "${OLDPWD}"
rm -r "${geotmpdir}"
