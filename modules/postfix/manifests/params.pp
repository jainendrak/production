class postfix::params {

  $pkg_name                    = 'postfix'

  $svc_name                    = 'postfix'

  $def_fw_interface            = 'ens32'

  $def_root_email              = 'root@localhost'

  $def_behind_haproxy          = 'no'

  $def_pf_relay_enabled        = 'no'

  $def_sasl_auth_enabled       = 'no'

  $def_postfix_hostname        = "${::fqdn}"

  $def_postfix_interfaces      = 'all'

  $def_postfix_protocols       = 'ipv4'

  $def_postfix_listen_port     = '25'

  $def_postfix_networks        = [ 'UNDEFINED!' , ]

  $def_postfix_relay_domains   = []

  $def_postfix_relayhost       = 'UNDEFINED!'

  $def_tls_cert_file           = "/etc/pki/tls/certs/${::fqdn}.cert"

  $def_tls_key_file            = "/etc/pki/tls/private/${::fqdn}.pem"

  $def_tls_cafile              = "/etc/pki/tls/certs/ca.cert"

  $def_tls_loglevel            = '2'

  $def_tls_ask_ccert           = 'yes'

  $def_tls_security_level      = 'may'

  $def_tls_auth_only           = 'no'

  $def_tls_cache_timeout       = '3600s'

  $def_tls_mandatory_ciphers   = [ 'high' , ] 

  $def_tls_exclude_ciphers     = [ 'aNULL' , 'MD5' , ]

  $def_tls_mandatory_protocols = [ '!SSLv2' , '!SSLv3' , ]

  $def_tls_dh512_file          = '/etc/postfix/dh_512.pem'

  $def_tls_dh1024_file         = '/etc/postfix/dh_1024.pem'

  $def_tls_eecdh_grade         = 'strong'

  $def_tls_start_timeout       = '300s'

  $def_sender_canonical_maps   = [ 'nobody    root@localhost' , ]

  case $::operatingsystem {

      'CentOS', 'RedHat': {

          case $::operatingsystemmajrelease {

              '6': {

                  $conf_tpl            = 'main.cf.el6.erb'

                  $master_tpl          = 'master.cf.el6.erb'

                  $aliases_tpl         = 'aliases.el6.erb'
              }

              '7': {
                    
                  $conf_tpl            = 'main.cf.el7.erb'

                  $master_tpl          = 'master.cf.el7.erb'

                  $aliases_tpl         = 'aliases.el7.erb'
              }
          }
      }
  }

  $aliases_file                = '/etc/aliases'

  $conf_file                   = '/etc/postfix/main.cf'

  $master_file                 = '/etc/postfix/master.cf'

  $sasl_tpl                    = 'sasl_passwd.erb'

  $sc_maps_tpl                 = 'sender_canonical.erb'

}
