class lamp::grunt {
	require lamp::nodejs

	exec { "npm-install-grunt" :
		command => "/usr/bin/npm install -g grunt-cli",
		user => "root",
		creates => "/usr/bin/grunt",
		require => Package["nodejs"],
	}
}
