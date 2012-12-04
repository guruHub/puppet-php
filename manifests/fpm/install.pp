class php::fpm::install(fpm_package_version => $php::params::fpm_package_version, ) { 
    package { $php::params::fpm_package_name:
        ensure  => $fpm_package_version,
        require => Class["php"],
    }
}
