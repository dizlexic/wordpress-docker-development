FROM wordpress:latest

# enable ssl in apache
RUN a2enmod ssl

ENV WP_SERVER_NAME="wordpress.local"
ENV SSL_LOCATION="Springfield"
ENV SSL_STATE="Denial"
ENV SSL_COUNTRY="US"

# Generate a self-signed certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt -subj "/C=${SSL_COUNTRY}/ST=${SSL_STATE}/L=${SSL_LOCATION}/O=Dis/CN=${WP_SERVER_NAME}"
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

# copy the self-signed certificate and key

