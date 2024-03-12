# Docker Compose Cheat Sheet
 
# Start and stop of an existing service container.
   docker-compose start
   docker-compose stop-t, --timeout # specify a shutdown timeout in seconds.(default: 10)

   docker-compose pause  # Pauses running containers of a service. They can be unpaused with
   docker-compose unpause # Unpauses paused containers of a service.
   docker-compose restart #Restarts all stopped and running services.
   docker-compose ps #Shows list of containers for a service.
   docker-compose logs-f, --follow #  Follow log output.

   docker-compose top  # View the processes running within each service container.
   docker-compose pull # Pulls an image associated with a service defined in a docker-compose images.
   docker-compose rm  # Removes stopped service containers.By default.
# tags for docker-compose rm 
  -f, --force – Don’t ask to confirm the removal
  -s, --stop – Stop the containers, if required, before removing
  -v – Remove any anonymous volumes attached to containers

# example for docker-compose.yml

    version: "3.7"
    services:
    wordpress_db:
    container_name: "wordpress_db"
    image: "mysql:5.7"
    volumes:
    - ~/dockers/wordpress/.data/wordpress_‐
    db:/var/lib/mysql
    environment:
    MYSQL_USER: gaurav
    MYSQL_PASSWORD: victory
    MYSQL_DATABASE: db
    MYSQL_RANDOM_ROOT_PASSWORD: '1'
    networks:
    - wordpress_network
    ports:
    - 3307:3306
    wordpress_web:
    container_name: "wordpress_web"
    image: "wordpress"
    volumes:
    - ~/dockers/wordpress/.data/wordpress_‐
    web:/var/www/html
    environment:
    WORDPRESS_DB_HOST: wordpress_db
    WORDPRESS_DB_USER: gaurav
    WORDPRESS_DB_PASSWORD: victory
    WORDPRESS_DB_NAME: db
    networks:
    - wordpress_network
    ports:
    - 8080:80
    depends_on:
    - wordpress_db
    networks:
    wordpress_network:
    Dependencies
    links:
    - db:database
    - redis
    depends_on:
    - db

# To start the service      
    docker compose up
    docker-compose -f <filename.yml> up

   -d, --detach # background detached mode
   --build  # forcefully Build images before
# starting containers.
   --no-build  # skips the image build process
   --force-recreate # Recreate containers even if their


    docker-compose down # Stops containers and removes containers, networks, volumes, and images

    use -v to remove volumes also along with other things docker-compose build
docker-compose run wordpress_db bash
docker-compose version
Prints the version of docker-compose.
docker-compose push
Pushes images for services to their respective registry/repository
docker-compose config
Validate and view the Compose file

    web:
    # build from Dockerfile
    build: .
    # build from custom Dockerfile
    build:
    context: ./dir
    dockerfile: Dockerfile.dev
    # build from image
    image: ubuntu
    image: ubuntu:14.04
    image: tutum/influxdb
    image: example-registry:4000/postgresql
    image: a4bc65fd
    Ports
    ports:
    - "3000"
    - "8000:80" # guest:host
    # expose ports to linked services (not to host)
    expose: ["3000"]
    Commands
    # command to execute
    command: bundle exec thin -p 3000
    command: [bundle, exec, thin, -p, 3000]
    # override the entrypoint
    entrypoint: /app/start.sh
    entrypoint: [php, -d, vendor/bin/phpunit]

    # Environment variables

    # environment vars
    environment:
    RACK_ENV: development
    environment:
    - RACK_ENV=development

    # environment vars from file
    env_file: .env
    env_file: [.env, .development.env]
   