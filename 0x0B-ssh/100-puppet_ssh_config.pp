# Puppet script to create ssh config file

file_line { 'include_id_file':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}

file_line { 'authenticate_without_password':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}
