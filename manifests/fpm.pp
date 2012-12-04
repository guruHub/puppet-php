class php::fpm($fpm_ini_content = undef, $fpm_ini_source = undef, $fpm_conf_content = undef, $fpm_conf_source = undef,
               $fpm_package_version = $php::params::fpm_package_version) {
    include php, php::fpm::config, php::fpm::service

    class { 'php::fpm::install': 
            fpm_package_version => $fpm_package_version
    }

    Class["php::config"] ~> Class["php::fpm::service"]
}
