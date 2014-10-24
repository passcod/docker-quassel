#!/bin/bash
if [ "$(id -u)" != "0" ]; then
  /usr/bin/quasselcore --configdir=/var/lib/quassel/ $@
else
  chown -R quasselcore:users /var/lib/quassel
  chmod -R g+rwX /var/lib/quassel
  sudo -u quasselcore /start $@
fi
