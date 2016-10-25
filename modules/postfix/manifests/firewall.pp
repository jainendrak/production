class postfix::firewall ( $fw_interface = '' , 
                          $postfix_listen_port = '' , ) {

  if ($fw_interface == '') {
      $_fw_interface = $postfix::params::def_fw_interface
  }
  else {
      $_fw_interface = $fw_interface
  }
  if ($postfix_listen_port == '') {
      $_postfix_listen_port = $postfix::params::def_postfix_listen_port
  }
  else {
      $_postfix_listen_port = $postfix_listen_port
  }

  firewall { '191 allow smtp':
      proto    => 'tcp' ,
      state    => [ 'NEW' , 'ESTABLISHED' , ] ,
      dport    => "${_postfix_listen_port}" ,
      iniface  => "${_fw_interface}" ,
      action   => 'accept' ,
  }
}
