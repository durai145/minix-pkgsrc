#! @RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: anacron
# REQUIRE: LOGIN

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="anacron"
rcvar=$name
command="@PREFIX@/sbin/${name}"
required_files="@PKG_SYSCONFDIR@/anacrontab"
command_args="-t @PKG_SYSCONFDIR@/anacrontab"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n ' ${name}'
	${command} ${anacron_flags} ${command_args}
fi
