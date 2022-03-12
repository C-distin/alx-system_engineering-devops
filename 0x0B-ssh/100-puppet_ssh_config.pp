# puppet script to make changes to configuration file
# connect to server using ssh key "~/.ssh/school"
# refuse to authenticate using password

include stdlib

file_line {'turn off password authentication':
  ensure  => 'present',
  path    => '/etc/ssh/sshd_config',
  line    => 'PasswordAuthentication yes',
  match   => '^PasswordAuthentication yes$',
  replace => 'PasswordAuthentication no',
  require => File['/etc/ssh/sshd_config'],
}

file_line {'set identity file':
  ensure  => 'present',
  path    => '/etc/ssh/sshd_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^IdentityFile ~/.ssh/school$',
  replace => true,
  require => File['~/.ssh/school'],
}
