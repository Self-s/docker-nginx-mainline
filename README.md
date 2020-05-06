# Forked from devilbox/docker-nginx-mainline and delete virtual hosts function

[![Build Status](https://travis-ci.org/devilbox/docker-nginx-mainline.svg?branch=master)](https://travis-ci.org/devilbox/docker-nginx-mainline)
[![release](https://img.shields.io/github/release/devilbox/docker-nginx-mainline.svg)](https://github.com/devilbox/docker-nginx-mainline/releases)
[![Join the chat at https://gitter.im/devilbox/Lobby](https://badges.gitter.im/devilbox/Lobby.svg)](https://gitter.im/devilbox/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Github](https://img.shields.io/badge/github-docker--nginx--mainline-red.svg)](https://github.com/devilbox/docker-nginx-mainline)
[![](https://images.microbadger.com/badges/license/devilbox/nginx-mainline.svg)](https://microbadger.com/images/devilbox/nginx-mainline "nginx-mainline")

**[devilbox/docker-nginx-mainline](https://github.com/devilbox/docker-nginx-mainline)**

This image is based on the official **[Nginx](https://hub.docker.com/_/nginx)** Docker image and extends it with the ability to have **virtual hosts created automatically**, as well as **adding SSL certificates** when creating new directories. For that to work, it integrates two tools that will take care about the whole process: **[watcherd](https://github.com/devilbox/watcherd)** and **[vhost-gen](https://github.com/devilbox/vhost-gen)**.

From a users perspective, you mount your local project directory into the container under `/shared/httpd`. Any directory then created in your local project directory wil spawn a new virtual host by the same name. Additional settings such as custom server names, PHP-FPM or even different Apache templates per project are supported as well.

**HTTP/2 is enabled by default for all SSL connections.**

| Docker Hub | Upstream Project |
|------------|------------------|
| <a href="https://hub.docker.com/r/devilbox/nginx-mainline"><img height="82px" src="http://dockeri.co/image/devilbox/nginx-mainline" /></a> | <a href="https://github.com/cytopia/devilbox" ><img height="82px" src="https://raw.githubusercontent.com/devilbox/artwork/master/submissions_banner/cytopia/01/png/banner_256_trans.png" /></a> |

**[Apache 2.2](https://github.com/devilbox/docker-apache-2.2) | [Apache 2.4](https://github.com/devilbox/docker-apache-2.4) | [Nginx stable](https://github.com/devilbox/docker-nginx-stable) | Nginx mainline**

----


## Options

#### Environmental variables

This Docker container adds a lot of injectables in order to customize it to your needs. See the table below for a detailed description.

##### Optional environmental variables (general)

| Variable | Type | Default | Description |
|----------|------|---------|-------------|
| DEBUG_ENTRYPOINT    | int    | `0`     | Show settings and shell commands executed during startup.<br/>Values:<br/>`0`: Off<br/>`1`: Show settings<br/>`2`: Show settings and commands |
| DEBUG_RUNTIME       | bool   | `0`     | Be verbose during runtime.<br/>Value: `0` or `1` |
| DOCKER_LOGS         | bool   | `0`     | When set to `1` will redirect error and access logs to Docker logs (`stderr` and `stdout`) instead of file inside container.<br/>Value: `0` or `1` |
| TIMEZONE            | string | `UTC`   | Set docker OS timezone.<br/>(Example: `Europe/Berlin`) |
| NEW_UID             | int    | `101`   | Assign the default Nginx user a new UID. This is useful if you you mount your document root and want to match the file permissions to the one of your local user. Set it to your host users uid (see `id` for your uid). |
| NEW_GID             | int    | `101`   | This is useful if you you mount your document root and want to match the file permissions to the one of your local user group. Set it to your host user groups gid (see `id` for your gid). |


#### Available mount points

| Docker              | Description |
|---------------------|-------------|
| /etc/nginx/nginx.conf | Mount this file to add your outside configuration files to Nginx |



#### Default ports

| Docker | Description |
|--------|-------------|
| 80     | HTTP listening Port |
| 443    | HTTPS listening Port |

