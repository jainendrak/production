class postfix::service {

  service { $postfix::params::svc_name:
      ensure      => running ,

      hasstatus   => true ,
      hasrestart  => true ,
      enable      => true ,

      require     => Class['postfix::config'] ,
           }
}
