#!/bin/sh
rm -r /var/run/dbus
mkdir -p /var/run/dbus
dbus-daemon --system && avahi-daemon -D && shairport-sync -m avahi -a "$AIRPLAY_NAME" "$@"
