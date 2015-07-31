class base::license {

  service { 'switchd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true
  }

# cumulus_license requires a web address or local file
  file { "/tmp/${::hostname}.lic":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    source => "puppet:///modules/base/${::hostname}.lic"
  }

  cumulus_license { 'workbench':
    src    => "puppet:///modules/base/${::hostname}.lic",
    notify => Service['switchd']
  }

}
