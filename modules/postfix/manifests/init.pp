# Class: postfix
#
#   This module installs and configures a Postfix
#   mail relay.
#
#  

class postfix (  $pkg_version = '' ,
                 $fw_interface = '' ,
                 $root_email = '' , 
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

  include postfix::params

#  class { 'postfix::firewall': 
#              stage                   => 'firewall' ,
#              require                 => Class['commonfirewall::pre'] ,
#
#              fw_interface            => $fw_interface ,
#              postfix_listen_port     => $postfix_listen_port ,
#  }

  class { 'postfix::install': 
              pkg_version             => $pkg_version ,
  }

  class { 'postfix::config': 
              root_email              => $root_email ,
              behind_haproxy          => $behind_haproxy ,
              pf_relay_enabled        => $pf_relay_enabled ,
              postfix_hostname        => $postfix_hostname ,
              postfix_listen_port     => $postfix_listen_port ,
              postfix_interfaces      => $postfix_interfaces ,
              postfix_protocols       => $postfix_protocols ,
              postfix_networks        => $postfix_networks ,
              postfix_relay_domains   => $postfix_relay_domains ,
              postfix_relayhost       => $postfix_relayhost ,
              sasl_auth_enabled       => $sasl_auth_enabled ,
              sasl_username           => $sasl_username ,
              sasl_password           => $sasl_password ,
              tls_cert_file           => $tls_cert_file ,
              tls_key_file            => $tls_key_file ,
              tls_cafile              => $tls_cafile ,
              tls_loglevel            => $tls_loglevel ,
              tls_ask_ccert           => $tls_ask_ccert ,
              tls_security_level      => $tls_security_level ,
              tls_auth_only           => $tls_auth_only ,
              tls_cache_timeout       => $tls_cache_timeout ,
              tls_mandatory_ciphers   => $tls_mandatory_ciphers ,
              tls_exclude_ciphers     => $tls_exclude_ciphers ,
              tls_mandatory_protocols => $tls_mandatory_protocols ,
              tls_dh512_file          => $tls_dh512_file ,
              tls_dh1024_file         => $tls_dh1024_file ,
              tls_eecdh_grade         => $tls_eecdh_grade ,
              tls_start_timeout       => $tls_start_timeout ,
              sender_canonical_maps   => $sender_canonical_maps ,
                
  }

  class { 'postfix::service': }
}
