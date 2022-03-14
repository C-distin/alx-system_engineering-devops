# Create a file with `0744` permissions 
# that belongs to `www-data` of group `www-data`.

file {
  '/tmp/school':
    ensure  => file,
    mode    => '0744',
    owner   => 'www-data',
    group   => 'www-data',
    path    => '/tmp/school',
    content => 'I love Puppet'
}
