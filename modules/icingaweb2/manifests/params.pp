class icingaweb2::params {
  $dbwebtype                    = 'mysql'
  $dbwebhost                    = 'localhost'
  $dbwebport                    = '3306'
  $dbwebuser                    = 'root'
  $dbwebpasswd                  = 'strongpassword'
  $dbwebname                    = 'icingaweb2'

  $dbtype                       = 'mysql'
  $dbhost                       = 'localhost'
  $dbport                       = '3306'
  $dbuser                       = 'icinga'
  $dbpasswd                     = 'icinga'
  $dbname                       = 'icinga'
  $with_repo                    = true
  $default_confdir              = '/etc/icingaweb2'
  $system_mod_dir               = '/usr/share/icingaweb2/modules'
  $conf_mod_dir                 = "${default_confdir}/enabledModules"
  $modules                      = []

  $module_files                   = {'monitoring' => ['backends','config','commandtransports']}

  $conf_files                   = ['authentication', 'config', 'resources', 'roles', 'groups']
  $mysql_packages               = ['php-mysql', 'php-ZendFramework-Db-Adapter-Pdo-Mysql']
  $pgsql_packages               = ['php-pgsql', 'php-ZendFramework-Db-Adapter-Pdo-Pgsql']
}
