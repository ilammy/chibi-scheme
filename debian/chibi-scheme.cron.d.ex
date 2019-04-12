#
# Regular cron jobs for the chibi-scheme package
#
0 4	* * *	root	[ -x /usr/bin/chibi-scheme_maintenance ] && /usr/bin/chibi-scheme_maintenance
