class php::fpm::install {
    package { $php::params::fpm_package_name:
        ensure  => $php::params::fpm_package_version,
        require => Class["php"],
    }
}
