# === Class base::packages
class base::packages {
  stdlib::ensure_packages([
    'git',
    'htop',
    'tmux',
    'vim'
  ])
}
