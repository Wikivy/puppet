# == systemdlib::mask ===
#
# @summary Use 'systemctl mask $title' to link the service unit file to /dev/null so
#          that the service cannot be started.
#
#
# Note that systemdlib::mask and systemdlib::unmask can be used to ensure that
# installing a package does not result in its service being automatically
# started. For example:
#
#  systemdlib::mask { 'mtail.service':
#      unless => '/usr/bin/dpkg -s mtail | /bin/grep -q "^Status: install ok installed$"',
#  }
#
#  package { 'mtail':
#      ensure  => present,
#      require => Systemdlib::Mask['mtail.service'],
#      notify  => Systemdlib::Unmask['mtail.service'],
#  }
#
#  systemdlib::unmask { 'mtail': }
# @param unit the unit name
# @param unless and unless clause to use
define systemdlib::mask (
  Systemdlib::Unit::Name $unit   = $title,
  Optional[String]    $unless = undef,
) {
  exec { "mask_${unit}":
    command => "/bin/systemctl mask ${unit}",
    creates => "/etc/systemd/system/${unit}",
    unless  => $unless,
  }
}