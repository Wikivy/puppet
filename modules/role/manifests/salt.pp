class role::salt {

    system::role { 'salt':
        description => 'Salt master (salt-ssh)',
    }
}
