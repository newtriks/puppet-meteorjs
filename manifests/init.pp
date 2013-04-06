# Public: Install meteorjs
#
# Usage:
#
#   include meteorjs

class meteorjs {
	include boxen::config

    exec { 'install meteorjs':
		command => "su -c 'curl https://install.meteor.com | /bin/sh'",
		creates => "${boxen::config::bindir}/meteorjs",
		cwd     => $boxen::config::bindir,
    }
}