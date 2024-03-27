#!/usr/bin/bash env
## In this task i'll be using puppet to make configurations to my file

file { '/home/Gigi2303/.ssh/config':
ensure => file,
owner  => 'Gigi2303',
mode   => '0600',
content=> "
HostName  54.208.137.176
User Gigi2303
IdentityFile ~/.ssh/school
PreferredAuthentications publickey
PasswordAuthentication no
",
}
