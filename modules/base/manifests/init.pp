# class: base
class base (
) {
 include apt
 include stdlib
 include base::packages
 include base::puppet
 include base::timezone
 include base::upgrades
 include users

 # Used by salt-user
 users::user { 'salt-user': 
  ensure => present,
  uid => 3100,
  ssh_keys => [
    'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMF+SSilkwQnXxrxLueBYcAEIgnzrAX91CB+u66bktuH salt-user@puppet.wikivy.com'
  ],
  privileges => ['ALL = (ALL) NOPASSWD: ALL'],
 }

}
