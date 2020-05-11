# @summary Install Apache

class apache::install {
  package { "${apache::install_name}":
    ensure => $apache::install_ensure,
  }
}
