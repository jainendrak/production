class postfix{
	package {"postfix":
		ensure => installed
		}
class {"postfix::files" :
	require => Package["postfix"]
        }
class {"postfix::postmap":
	require => Class["postfix::files"]
	}
	service{"postfix":
		ensure =>"running",
		require => Class["postfix::postmap"]
		
}
} 
