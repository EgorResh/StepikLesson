sudo ﻿ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo --bind='0.0.0.0:8080' hello:application
