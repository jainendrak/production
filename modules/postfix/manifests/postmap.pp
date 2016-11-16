class postfix::postmap{
	exec { 'postmap':
	command => 'postmap /etc/postfix/generic',
   	path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/puppetlabs/bin:/root/bin'
	}

	exec { '/etc/postfix/sender_canonical':
        command => 'postmap /etc/postfix/sender_canonical',
        path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/puppetlabs/bin:/root/bin'
        }

	exec { '/etc/postfix/sasl_passwd':
        command => 'postmap /etc/postfix/sasl_passwd',
        path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/puppetlabs/bin:/root/bin'
        }

	file {"/etc/postfix/sasl_passwd.db" :
		ensure => "present",
		mode => "0600",
		owner => "root",
		group => "root",
		require => Exec["/etc/postfix/sasl_passwd"]
	}
}
