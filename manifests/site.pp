# servers

node 'puppet.wikivy.com' {
  include base
  include role::postgresql
  include puppetdb::database
  include role::puppetdb
  include role::puppetserver
  include role::salt
}

# ensures all servers have basic class if puppet runs
node default {
    include base
}
