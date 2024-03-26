## This puppet installs flask from pip3 in version 2.1.0

package { 'Flask':
ensure   => '2.1.0',
provider => 'pip3'
}
package { 'Werkzeug':
ensure   => '2.1.1',
provider => 'pip3'
}
