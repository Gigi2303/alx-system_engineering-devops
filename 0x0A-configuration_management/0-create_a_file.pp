# This puppet will create a file in /tmp giving it some content,specific items

file { '/tmp/school':
ensure  => present,
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => "I love Puppet\n",
}
