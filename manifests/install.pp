# @summary Install Apache

class apache::install {
  package { 'httpd':
    ensure => 'present',
  }
}
