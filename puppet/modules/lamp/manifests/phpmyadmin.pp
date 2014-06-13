class lamp::phpmyadmin {
	package { "phpmyadmin" :
		ensure => installed,
		require => Package["mysql-server", "apache2", "php5"],
		notify => Service["apache2"],
	}

	file { "/etc/apache2/conf.d/phpmyadmin.conf" :
		ensure => "link",
		target => "/etc/phpmyadmin/apache.conf",
		require => Package["phpmyadmin"],
		notify => Service["apache2"],
	}
}
