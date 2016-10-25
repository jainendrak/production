# class commonfirewall::post
#
#  This manifest defines the default
#  firewall rules to be applied to all
#  nodes in an environment.
# 

class commonfirewall::post {

    firewall { '999 drop all':
        proto   => 'all' ,
        action  => 'drop' ,
        before  => undef ,
    }
}
