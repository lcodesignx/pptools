class autofs {
  package { 'autofs':
    ensure => 'installed',
  }
  service { 'autofs':
    ensure  => 'running',
    enable  => 'true',
    require => Package['autofs'],
  }

