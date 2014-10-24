#!/bin/bash
chown -R quasselcore:users /var/lib/quassel
chmod -R g+rwX /var/lib/quassel
su -c '/usr/bin/quassel --configdir=/var/lib/quassel $@' quasselcore
