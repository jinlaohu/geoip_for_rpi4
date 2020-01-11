# Geoip_for_rpi4
install geoip iptables addons on Raspberry pi 4
install geoip iptables addons on Raspberry pi 4.
- This's my first repository on Github. 
- This project 's adapted some idea and coding form https://www.linux-tips-and-tricks.de/en/raspberry/499-how-to-block-ip-ranges-with-geoip-on-raspbian/. 
- Coding base on that you have sudo right and already installed fail2ban.
- It's for RPI4 only not 3.
- You need to create an account on https://www.maxmind.com to get an license key using for download geoip database.
- After finish install and update, insert this line into crontab for update database once a month.

    00 05 01 * *    /your/dir/update_geoip.sh
