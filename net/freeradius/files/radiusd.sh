#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: radiusd.sh,v 1.4 2004/12/22 10:07:21 adrianp Exp $
#
# PROVIDE: radiusd
# REQUIRE: network
#

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="radiusd"
rcvar=${name}
command="@PREFIX@/sbin/radiusd"
pidfile="@VARBASE@/run/radiusd/radiusd.pid"
start_precmd="radiusd_precmd"

radiusd_precmd()
{
	if [ ! -d @VARBASE@/run/radiusd ]; then
		@MKDIR@ @VARBASE@/run/radiusd
		@CHMOD@ 0750 @VARBASE@/run/radiusd
		@CHOWN@ @ROOT_USER@:@ROOT_GROUP@ @VARBASE@/run/radiusd
	fi
}

if [ -f /etc/rc.subr ]
then
	load_rc_config $name
	run_rc_command "$1"
else
	echo -n ' ${name}'
	exec ${command} ${radiusd_flags} ${command_args}
fi
