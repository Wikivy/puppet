# = Class: role::vault
#
# Sets up a centralised vault server.
#
#
# [*vault_hostname*]
#   The hostname for the vualt server.
#
# [*vault_ui_enable*]
#   A boolean on whether to enable the vault ui
#
class role::vault (
  String $vault_hostname = lookup('vault_hostname'),
  Boolean $vault_ui_enable = lookup('vault_ui_enable', { 'default_value' => false })
) {
  class { 'vault':
    install_method => "repo",
    storage => {
      file => {
        path => '/var/lib/vault'
      }
    },
    listener => [
      {
        tcp => {
          address => '0.0.0.0:8200',
          tls_disable => 0,
        }
      }
    ],
    enable_ui => $vault_ui_enable,
    api_addr => "${vault_hostname}:8200",
  }
}