class lamp::mysql5 {
	package { ["mysql-server", "mysql-client"] :
		ensure => latest,
	}

	service { "mysql":
	    enable => true,
		ensure => running,
		hasrestart => true,
		require => Package["mysql-server"],
	}
}