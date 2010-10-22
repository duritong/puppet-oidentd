class oidentd::base {
  package{'oidentd':
    ensure => installed,
  }

  file{'/etc/oidentd.conf':
    source => [ "puppet:///modules/site-oidentd/${fqdn}/oidentd.conf",
                "puppet:///modules/site-oidentd/oidentd.conf",
                "puppet:///modules/site/oidentd.conf" ],
    require => Package['oidentd'],
    notify => Service['oidentd'],
    owner => root, group => 0, mode => 0644;
  }

  service{'oidentd':
    ensure => running,
    enable => true,
    hasstatus => false,
  }
}
