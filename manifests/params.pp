class ssh::params {

$permit_root_login = false
$port = 22

   case $facts['os']['name']{ 

           #/^(Debian|Ubuntu)$/:{
           'Ubuntu':{
               $package_name = 'openssh-server'
               $service_name = 'ssh'
               notify {"${0} is our operating system!": }
                  }
            'RedHat': {
               $package_name = 'openssh-server'
               $service_name = 'sshd'
              }
         default: {
                notify {'The operating system is not supported':}
              }
      
 }








}
