# Public: Install meteorjs
#
# Usage:
#
#   include meteorjs

class meteorjs (
	$url = 'https://install.meteor.com'
) {
	include boxen::config

    exec { 'install meteorjs':
		command => "curl ${url}",
		creates => "${boxen::config::bindir}/meteorjs",
		cwd     => $boxen::config::bindir,
    }
}