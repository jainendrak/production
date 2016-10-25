class postfix::config (  $root_email = '' ,
                         $behind_haproxy = '' ,
                         $pf_relay_enabled = '' , 
                         $postfix_hostname = '' ,
                         $postfix_listen_port = '' ,
                         $postfix_interfaces = '' ,
                         $postfix_protocols = '' ,
                         $postfix_networks = [] ,
                         $postfix_relay_domains = [] ,
                         $postfix_relayhost = '' ,
                         $sasl_auth_enabled = '' ,
                         $sasl_username = '' ,
                         $sasl_password = '' ,
                         $tls_cert_file = '' ,
                         $tls_key_file = '' ,
                         $tls_cafile = '' ,
                         $tls_loglevel = '' ,
                         $tls_ask_ccert = '' ,
                         $tls_security_level = '' ,
                         $tls_auth_only = '' ,
                         $tls_cache_timeout = '' ,
                         $tls_mandatory_ciphers = '' ,
                         $tls_exclude_ciphers = '' ,
                         $tls_mandatory_protocols = '' ,
                         $tls_dh512_file = '' ,
                         $tls_dh1024_file = '' ,
                         $tls_eecdh_grade = '' ,
                         $tls_start_timeout = '' , 
                         $sender_canonical_maps = [] , ) {

    if ($root_email == '') {
        $_root_email = $postfix::params::def_root_email
    }
    else {
        $_root_email = $root_email
    }
    if ($behind_haproxy == '') {
        $_behind_haproxy = $postfix::params::def_behind_haproxy
    }
    else {
        $_behind_haproxy = $behind_haproxy
    }
    if ($pf_relay_enabled == '') {
        $_pf_relay_enabled = $postfix::params::def_pf_relay_enabled
    }
    else {
        $_pf_relay_enabled = $pf_relay_enabled
    }
    if ($sasl_auth_enabled == '') {
        $_sasl_auth_enabled = $postfix::params::def_sasl_auth_enabled
    }
    else {
        $_sasl_auth_enabled = $sasl_auth_enabled
    }
    if ($postfix_hostname == '') {
        $_postfix_hostname = $postfix::params::def_postfix_hostname
    }
    else {
        $_postfix_hostname = $postfix_hostname
    }
    if ($postfix_listen_port == '') {
        $_postfix_listen_port = $postfix::params::def_postfix_listen_port
    }
    else {
        $_postfix_listen_port = $postfix_listen_port
    }
    if ($postfix_interfaces == '') {
        $_postfix_interfaces = $postfix::params::def_postfix_interfaces
    }
    else {
        $_postfix_interfaces = $postfix_interfaces
    }
    if ($postfix_protocols == '') {
        $_postfix_protocols = $postfix::params::def_postfix_protocols
    }
    else {
        $_postfix_protocols = $postfix_protocols
    }
    if ($postfix_networks == []) {
        $_postfix_networks = $postfix::params::def_postfix_networks
    }
    elsif (is_array($postfix_networks)) {
        $_postfix_networks = $postfix_networks
    }
    else {
        $_postfix_networks = [ $postfix_networks ,]
    }
    if ($postfix_relay_domains == []) {
        $_postfix_relay_domains = $postfix::params::def_postfix_relay_domains
    }
    elsif (is_array($postfix_relay_domains)) {
        $_postfix_relay_domains = $postfix_relay_domains
    }
    else {
        $_postfix_relay_domains = [ $postfix_relay_domains , ]
    }
    if ($postfix_relayhost == '') {
        $_postfix_relayhost = $postfix::params::def_postfix_relayhost
    }
    else {
        $_postfix_relayhost = $postfix_relayhost
    }
    if ($tls_cert_file == '') {
        $_tls_cert_file = $postfix::params::def_tls_cert_file
    }
    else {
        $_tls_cert_file = $tls_cert_file
    }
    if ($tls_key_file == '') {
        $_tls_key_file = $postfix::params::def_tls_key_file
    }
    else {
        $_tls_key_file = $tls_key_file
    }
    if ($tls_cafile == '') {
        $_tls_cafile = $postfix::params::def_tls_cafile
    }
    else {
        $_tls_cafile = $tls_cafile
    }
    if ($tls_loglevel == '') {
        $_tls_loglevel = $postfix::params::def_tls_loglevel
    }
    else {
        $_tls_loglevel = $tls_loglevel
    }
    if ($tls_ask_ccert == '') {
        $_tls_ask_ccert = $postfix::params::def_tls_ask_ccert
    }
    else {
        $_tls_ask_ccert = $tls_ask_ccert
    }
    if ($tls_security_level == '') {
        $_tls_security_level = $postfix::params::def_tls_security_level
    }
    else {
        $_tls_security_level = $tls_security_level
    }
    if ($tls_auth_only == '') {
        $_tls_auth_only = $postfix::params::def_tls_auth_only
    }
    else {
        $_tls_auth_only = $tls_auth_only
    }
    if ($tls_cache_timeout == '') {
        $_tls_cache_timeout = $postfix::params::def_tls_cache_timeout
    }
    else {
        $_tls_cache_timeout = $tls_cache_timeout
    }
    if ($tls_mandatory_ciphers == '') {
        $_tls_mandatory_ciphers = $postfix::params::def_tls_mandatory_ciphers
    }
    else {
        $_tls_mandatory_ciphers = $tls_mandatory_ciphers
    }
    if ($tls_exclude_ciphers == '') {
        $_tls_exclude_ciphers = $postfix::params::def_tls_exclude_ciphers
    }
    else {
        $_tls_exclude_ciphers = $tls_exclude_ciphers
    }
    if ($tls_mandatory_protocols == '') {
        $_tls_mandatory_protocols = $postfix::params::def_tls_mandatory_protocols
    }
    else {
        $_tls_mandatory_protocols = $tls_mandatory_protocols
    }
    if ($tls_dh512_file == '') {
        $_tls_dh512_file = $postfix::params::def_tls_dh512_file
    }
    else {
        $_tls_dh512_file = $tls_dh512_file
    }
    if ($tls_dh1024_file == '') {
        $_tls_dh1024_file = $postfix::params::def_tls_dh1024_file
    }
    else {
        $_tls_dh1024_file = $tls_dh1024_file
    }
    if ($tls_eecdh_grade == '') {
        $_tls_eecdh_grade = $postfix::params::def_tls_eecdh_grade
    }
    else {
        $_tls_eecdh_grade = $tls_eecdh_grade
    }
    if ($tls_start_timeout == '') {
        $_tls_start_timeout = $postfix::params::def_tls_start_timeout
    }
    else {
        $_tls_start_timeout = $tls_start_timeout
    }
    if ($sender_canonical_maps == []) {
        $_sender_canonical_maps = $postfix::params::def_sender_canonical_maps
    }
    else {
        $_sender_canonical_maps = $sender_canonical_maps
    }

    $tpl_name         = "${postfix::params::conf_tpl}"
    $conf_tpl         = "$module_name/$tpl_name"

    $master_tpl_name  = "${postfix::params::master_tpl}"
    $master_tpl       = "$module_name/$master_tpl_name"

    $aliases_tpl_name = "${postfix::params::aliases_tpl}"
    $aliases_tpl      = "$module_name/$aliases_tpl_name"

    $sc_maps_tpl_name = "${postfix::params::sc_maps_tpl}"
    $sc_maps_tpl      = "$module_name/$sc_maps_tpl_name"

    $sasl_tpl_name    = "${postfix::params::sasl_tpl}"
    $sasl_tpl         = "$module_name/$sasl_tpl_name"


    file { $postfix::params::aliases_file:
        ensure  =>  file  ,

        alias   => 'aliases-file' ,

        owner   => 'root' ,
        group   => 'root' ,
        mode    => '0644'  ,

        content => template("${aliases_tpl}"),

        notify  => Exec['update-aliases'] ,
    }

    exec { "Update Aliases":
        command     => 'newaliases' ,

        alias       => 'update-aliases' ,
        path        => [ '/bin' , '/usr/bin' , '/usr/sbin' , ] ,
        subscribe   => File['aliases-file'] ,
        refreshonly => true ,
    }

    file { $postfix::params::conf_file:
        ensure  =>  file  ,

        owner   => 'root' ,
        group   => 'root' ,
        mode    => '0644'  ,

        content => template("${conf_tpl}") ,

        require => Class['postfix::install'] ,
        notify  => Class['postfix::service'] ,
    }

    file { $postfix::params::master_file:
        ensure  =>  file  ,

        owner   => 'root' ,
        group   => 'root' ,
        mode    => '0644'  ,

        content => template("${master_tpl}") ,

        require => Class['postfix::install'] ,
        notify  => Class['postfix::service'] ,
    }

    if ($_pf_relay_enabled == 'yes') {

        exec { "Generate 512-bit Diffie-Hellman key":
            command     => "openssl gendh -out ${_tls_dh512_file} -2 512" ,

            alias       => 'gen-dh512' ,
            path        => [ '/bin' , '/usr/bin' , '/usr/sbin' , ] ,

            creates     => "${_tls_dh512_file}" ,
            require     => Class['postfix::install'] ,
        }

        exec { "Generate 1024-bit Diffie-Hellman key":
            command     => "openssl gendh -out ${_tls_dh1024_file} -2 1024" ,

            alias       => 'gen-dh1024' ,
            path        => [ '/bin' , '/usr/bin' , '/usr/sbin' , ] ,

            creates     => "${_tls_dh1024_file}" ,
            require     => Class['postfix::install'] ,
        }

        file { "${_tls_dh512_file}":

            owner   => 'root' ,
            group   => 'root' ,
            mode    => '0640' ,

            require => Exec['gen-dh512'] ,
        }

        file { "${_tls_dh1024_file}":

            owner   => 'root' ,
            group   => 'root' ,
            mode    => '0640' ,

            require => Exec['gen-dh1024'] ,
        }

        file { "/etc/postfix/sender_canonical":
            ensure  => file ,

            alias   => 'sender-canonical-maps-file' ,

            owner   => 'root' ,
            group   => 'root' ,
            mode    => '0600' ,

            content => template("${sc_maps_tpl}") ,

            require => Class['postfix::install'] ,
            notify  => Exec['hash-sender-canonical-maps'] ,
        }

        exec { "Hash Postfix sender canonical maps":
            command     => "postmap hash:/etc/postfix/sender_canonical" ,

            alias       => 'hash-sender-canonical-maps' ,
            path        => [ '/bin' , '/usr/bin' , '/usr/sbin' , ] ,

            require     => [ Class['postfix::install'] ,
                             File['sender-canonical-maps-file'] , ] ,

            subscribe   => File['sender-canonical-maps-file'] ,
            notify      => Class['postfix::service'] ,

            logoutput   => true ,
            refreshonly => true ,
        }
    }

    if ($_sasl_auth_enabled == 'yes') {

        if ($sasl_username == '') {
            fail("No parameter was passed in for sasl_username, cannot continue.  Hint: check/set saslUsername in the CSV file for this node.")
        }
        else {
            $_sasl_username = $sasl_username
        }
        if ($sasl_password == '') {
            fail("No parameter was passed in for sasl_password, cannot continue.  Hint: check/set saslPassword in the CSV file for this node.")
        }
        else {
            $_sasl_password = $sasl_password
        }

        file { "/etc/postfix/sasl_passwd":
            ensure  => file ,

            alias   => 'sasl-passwd-file' ,

            owner   => 'root' ,
            group   => 'root' ,
            mode    => '0600' ,

            content => template("${sasl_tpl}") ,

            require => Class['postfix::install'] ,
            notify  => Exec['hash-sasl-passwd'] ,
        }

        exec { "Hash Postfix SASL Password":
            command     => "postmap hash:/etc/postfix/sasl_passwd" ,

            alias       => 'hash-sasl-passwd' ,
            path        => [ '/bin' , '/usr/bin' , '/usr/sbin' , ] ,

            require     => [ Class['postfix::install'] ,
                             File['sasl-passwd-file'] , ] ,

            subscribe   => File['sasl-passwd-file'] ,
            notify      => Class['postfix::service'] ,

            logoutput   => true ,
            refreshonly => true ,
        }
    }
}
