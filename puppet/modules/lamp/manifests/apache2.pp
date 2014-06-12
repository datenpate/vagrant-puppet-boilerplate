class lamp::apache2 {
	package { "apache2" :
		ensure => installed,
	}

	service { "apache2" :
	    enable => true,
		ensure => running,
		hasrestart => true,
		hasstatus => true,
		require => Package["apache2"],
	}
}