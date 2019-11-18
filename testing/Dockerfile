FROM debian
env var1 1234
RUN \
     apt update && \
     apt install -y  apache2 && \
     apt install -y  php7.0
RUN  echo '<?php phpinfo(); ?>' >> /var/www/html/index.php
CMD apachectl -DFOREGROUND
