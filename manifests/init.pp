# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache
class apache (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
) {
 #contain is used below instead of include like earlier is because contain also manages the order of their  run
  contain apache::install
  contain apache::config

  Class['::apache::install']
  -> Class['::apache::config']
}
