# Manifest to kill a process named 'killmenow'

exec { 'pkill':
onlyif   => 'ps -ef | grep killmenow | grep -v grep',
command  => 'pkill -f killmenow',
provider => 'shell'
}
