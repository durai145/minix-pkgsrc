#!/bin/sh
#
# $NetBSD$
#

# PROVIDE: tinyproxy
# REQUIRE: DAEMON

. /etc/rc.subr

name="tinyproxy"
rcvar=$name
command="@PREFIX@/sbin/${name}"
pidfile="/var/run/${name}.pid"
required_files="@PKG_SYSCONFDIR@/$name.conf"

load_rc_config $name
run_rc_command "$1"
