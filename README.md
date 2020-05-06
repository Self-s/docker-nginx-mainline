# Forked from devilbox/docker-nginx-mainline and deleted virtual hosts function

[![Build Status](https://travis-ci.org/devilbox/docker-nginx-mainline.svg?branch=master)](https://travis-ci.org/devilbox/docker-nginx-mainline)
[![release](https://img.shields.io/github/release/devilbox/docker-nginx-mainline.svg)](https://github.com/devilbox/docker-nginx-mainline/releases)
[![Join the chat at https://gitter.im/devilbox/Lobby](https://badges.gitter.im/devilbox/Lobby.svg)](https://gitter.im/devilbox/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Github](https://img.shields.io/badge/github-docker--nginx--mainline-red.svg)](https://github.com/devilbox/docker-nginx-mainline)
[![](https://images.microbadger.com/badges/license/devilbox/nginx-mainline.svg)](https://microbadger.com/images/devilbox/nginx-mainline "nginx-mainline")

**[devilbox/docker-nginx-mainline](https://github.com/devilbox/docker-nginx-mainline)**

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
| /etc/nginx/nginx.conf | Mount this file to add your nginx configuration files to Nginx |



#### Default ports

| Docker | Description |
|--------|-------------|
| 80     | HTTP listening Port |
| 443    | HTTPS listening Port |

