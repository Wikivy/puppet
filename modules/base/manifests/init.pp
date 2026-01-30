# class: base
class base (
) {
 include apt
 include base::packages
 include users

 # Used by salt-user
 users::user { 'salt-user': 
  ensure => present
  uid => 3100
  ssh_keys => [
    'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK0ge5Jx6JPgMqY8tbDzDhNtJI2esrK2iUJCAYoIElkO salt-user@puppet.wikivy.com'
  ],
  privileges => ['ALL = (ALL) NOPASSWD: ALL'],
 }

}
