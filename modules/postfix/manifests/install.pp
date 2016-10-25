class postfix::install ( $pkg_version = '' , ) {

  if ($pkg_version == '' ) {

      package { $postfix::params::pkg_name:
                  ensure  => latest ,
      }
  } 

  else {

      package { $postfix::params::pkg_name:
                  ensure  => $pkg_version ,
      }
  }
}
