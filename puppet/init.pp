node default {
	include base::apt-get-update
	include base::git

	include lamp::apache2
	include lamp::php5
	include lamp::mysql5
	
	include lamp::phpmyadmin
	
	include lamp::nodejs
	include lamp::grunt
}
