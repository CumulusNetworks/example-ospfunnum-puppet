class base::license {

  service { 'switchd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true
  }

  cumulus_license { 'workbench':
    src => "puppet:///modules/base/${::hostname}.lic",
    notify => Service['switchd']
  }

}
