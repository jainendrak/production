class postfix::files{
	file { "/etc/postfix/main.cf" :
                ensure => "file",
                source => "/etc/puppetlabs/code/environments/production/modules/postfix/files/main.cf"
        }               
        file { "/etc/postfix/generic" : 
                ensure => "file",
                source => "/etc/puppetlabs/code/environments/production/modules/postfix/files/generic"
        }   
        file { "/etc/postfix/sender_canonical" :
                ensure => "file",
                source => "/etc/puppetlabs/code/environments/production/modules/postfix/files/sender_canonical"
        }  
        file { "/etc/postfix/sasl_passwd" :       
                ensure => "file",
                source => "/etc/puppetlabs/code/environments/production/modules/postfix/files/sasl_passwd",
		owner  => 'root',
    		group  => 'root',
    		mode   => '0600',
        }	
}
