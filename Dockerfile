# Base image
FROM php:5.6-apache

# Install the mysqli extension
RUN docker-php-ext-install mysqli

# Update repo
RUN apt-get update -y

# Install mysql-client
RUN apt-get install mysql-client -y

# Install wp-cli as wp
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  && \
  chmod +x wp-cli.phar && \
  mv wp-cli.phar /usr/local/bin/wp

# Download and extract WordPress files on /var/www/html
RUN wp core download --allow-root

# Get args from docker-composer.yml
ARG WORDPRESS_DB_NAME
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_HOST

# Creating wp-config.php file on /var/www/html
RUN wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --allow-root --skip-check

COPY entrypoint.sh /entrypoint.sh

# makes the script executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
