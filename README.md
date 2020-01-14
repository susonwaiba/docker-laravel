# Docker for Laravel

Suports php v7.2, v7.3, v7.4

## Setup for existing project
- Clone github repo and rename just cloned folder to {projectName} eg: LaravelBlog
- `cd {projectName}`
- `mkdir laravel && mkdir data` - laravel contains project
- Insure *{projectName}/laravel/routes/web.php* is valid path
- `./build.sh`
- `./up.sh`
- `./bash.sh` - Now you are inside docker container
- `php artisan`
- `exit` - Now you are back to host machine
- `./down.sh` - Remove all containers (db data is persisted inside *{projectName}/data/db*)
- For other information check files


## Other info
- **Horizon** support

## PhpStorm setup
- Add remote php cli interpreter with docker image name would be something like `{projectName}_php:latest`
- Then change remote mapping to `/var/www/laravel` which is default internal mounting dir
- With above cli interpretter, we can run everything as like local cli interpreter in latest PhpStorm version


Merge request and feedbacks are welcome.
