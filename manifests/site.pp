# servers

node 'puppet.wikivy.com' {
  include base
}

# ensures all servers have basic class if puppet runs
node default {
    include base
}
