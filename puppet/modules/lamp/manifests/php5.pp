class lamp::php5 {
	package { "php5" :
		ensure => installed,
	}

	package { [
			"php5-curl", 
			"php5-gd", 
			"php5-imagick", 
			"php5-mcrypt", 
			"php5-mysqlnd", 
			"libapache2-mod-php5"
		]:
		ensure => installed,
		require => Package["apache2", "mysql-server"],
		notify => Service["apache2"],
	}
}