# === Class role::mediawiki
class role::mediawiki (
  Boolean $strict_firewall = lookup('role::mediawiki::use_strict_firewall', {'default_value' => false}),
  Boolean $use_mcrouter = lookup('role::mediawiki::use_mcrouter', {'default_value' => false})
) {
  include base

  # include mcrouter role if we are using it
  # otherwise include nutcracker role

  system::role { 'mediawiki':
    description => 'MediaWiki Production server',
  }
}