#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: xend.sh,v 1.1 2005/03/17 23:53:56 bouyer Exp $
#
# PROVIDE: xend
# REQUIRE: disks network

if [ -f /etc/rc.subr ]
then
	. /etc/rc.subr
fi

name="xend"
rcvar=$name
command="@PREFIX@/sbin/xend"
command_interpreter="@RCD_INTERPRETER@"
start_cmd="echo starting ${name}. && ${command} start"

load_rc_config $name
run_rc_command "$1"
