# Wordpres Development Environment
This is a simple docker-compose file to create a local development environment for WordPress.

## Requirements
- Docker

## How to use
1. Clone this repository
2. copy the `.env.example` file to `.env` and set the environment variables
3. Run `docker-compose up -d`

### Environment Variables
- `WP_PORT`: The port where the WordPress site will be available
- `WP_PORT_SSL`: The port where the WordPress site will be available using SSL (https)
- `WP_SERVER_NAME`: The domain of the WordPress site ``wordpress.local``
- `PMA_PORT`: The port where the phpMyAdmin will be available
- `DB_NAME`: The name of the database
- `DB_USER`: The user of the database
- `DB_PASSWORD`: The password of the database
- `DB_ROOT_PASSWORD`: The root password of the database

## Access
If you are using the default values and your hosts file is configured, you can access the WordPress site at `http://wordpress.local` and the phpMyAdmin at `http://wordpress.local:8080`

### Additional Information
- The WordPress files are stored in the `wp` folder
- Plugins and themes are stored in the plugins and themes folders respectively
- Placing a .sql file in the `data` folder will import it to the database
- Running the `export.sh` script will export the database to a .sql file in the `data` folder
- The phpMyAdmin credentials are `root` for the user and the value of `DB_ROOT_PASSWORD` for the password
