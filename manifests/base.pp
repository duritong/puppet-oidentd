# manage all the pieces
class oidentd::base {
  package{'oidentd':
    ensure => installed,
  } -> file{'/etc/oidentd.conf':
    source => [ "puppet:///modules/site_oidentd/${::fqdn}/oidentd.conf",
                "puppet:///modules/site_oidentd/oidentd.conf",
                "puppet:///modules/oidentd/oidentd.conf" ],
    owner   => 'root',
    group   => 0,
    mode    => '0644';
  } ~> service{'oidentd':
    ensure    => running,
    enable    => true,
  }
}
