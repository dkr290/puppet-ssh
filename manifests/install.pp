class ssh::install(

String  $package_name = $::ssh::package_name,
String  $ensure       = $::ssh::ensure,

){
          
               package { "${package_name}":
                    ensure => $ensure,




               }

}
