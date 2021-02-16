class paymaya::scripts {
	$scripts_dir = '/home/monitor/scripts'
	exec { 'retrieve_script':
		command => '/usr/bin/wget -O ${scripts_dir}/memory_check https://raw.githubusercontent.com/ejoshuamanalo/paymaya/master/memory_check',
		require => [Class[paymaya::packages],File[$scripts_dir]]
	}
	file { $scripts_dir:
		ensure => directory,
		owner => 'monitor',
		group => 'monitor',
		mode => '0750',
		require => Class[paymaya::users]
	}
}
