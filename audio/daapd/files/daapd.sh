#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: daapd.sh,v 1.1 2004/11/20 15:08:23 mjl Exp $
#

# PROVIDE: daapd
# REQUIRE: DAEMON LOGIN

. /etc/rc.subr

name="daapd"
help_name=$name
rcvar=$name
command="@PREFIX@/bin/${name}"
required_files="@PKG_SYSCONFDIR@/daapd.conf"
command_args="-c $required_files 2>&1 > /dev/null &"

#if ps auxww | grep -v grep | grep -q mDNSResponder ; then
#  echo "Runs: mDNSResponder"
#  :
#else
#  echo "Starting mDNSResponder"
#  /usr/pkg/bin/mDNSResponder
#fi

load_rc_config $name
run_rc_command "$1"
