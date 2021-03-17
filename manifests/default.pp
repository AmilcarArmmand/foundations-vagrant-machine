# Puppet manifest that sets up an Ubuntu 14.04 LTS environment

exec { 'apt-get update':
  command  => 'apt-get update',
  path     => '/usr/bin',
  provider => shell
}

$packages = ['vim', 'git', 'curl', 'valgrind', 'make', 'manpages-dev',
	    'manpages-posix-dev', 'shellcheck', 'autoconf', 'build-essential',
	    'texinfo']

package { $packages:
  ensure => 'installed'
}
