class lamp::nodejs {
	package { "python-software-properties" :
		ensure => installed,
	}

	exec { "apt-add-repository-nodejs" :
		command => "/usr/bin/apt-add-repository ppa:chris-lea/node.js",
		unless => "/usr/bin/test -s /etc/apt/sources.list.d/chris-lea-node_js-precise.list",
		user => "root",
		notify => Exec["apt-get update"],
		require => [
			Package["python-software-properties"],
		],
	}

	package { "nodejs" :
		ensure => installed,
		require => [
			Exec["apt-get update"],
			Exec["apt-add-repository-nodejs"],
		],
	}
}
