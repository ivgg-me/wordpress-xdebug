#!/usr/bin/env bash
set -Eeuo pipefail

user="${APACHE_RUN_USER:-www-data}"
group="${APACHE_RUN_GROUP:-www-data}"

chown -R $user:$group /var/xdebug

for script in /usr/src/wordpress-xdebug/scripts/*.php; do
    if [ ! -e ${script##*/} ]; then
        echo >&2 "Copying ${script##*/}..."
        cp $script .
        chown $user:$group ${script##*/}
    fi
done

exec /usr/local/bin/docker-entrypoint.sh "$@"