# class commonfirewall::pre 
#
#  This manifest defines the default
#  firewall rules to be applied to all
#  nodes in an environment.
# 

class commonfirewall::pre ( $fw_interface = '' , ) {
 
include commonfirewall::params

#    Firewall {
#        require => undef ,
#    }

    firewall { '000 accept all icmp':
        proto   => 'icmp' ,
        action  => 'accept' ,
    }

    firewall { '001 accept all to lo interface':
        proto   => 'all' ,
        iniface => 'lo' ,
        action  => 'accept' ,
    }

    firewall { '002 accept related established rules':
        proto   => 'all' ,
        state   => ['RELATED', 'ESTABLISHED', ] ,
        action  => 'accept' ,
    }

# We allow the SSH firewall exception in this module to keep
# the commonfirewall module idempotent from the SSH module
#
# We presume all nodes in an environment will need a firewall
# exception for SSH
#

    if ($fw_interface == '') {
        $_fw_interface = $commonfirewall::params::def_fw_interface
    }
    else {
        $_fw_interface = $fw_interface
    }

    firewall { '003 allow ssh':
        proto    => 'tcp' ,
        state    => [ 'NEW' , 'ESTABLISHED' , ] ,
        dport    => 22 ,
        iniface  => "${_fw_interface}" ,
        action   => 'accept' ,
    }

}
