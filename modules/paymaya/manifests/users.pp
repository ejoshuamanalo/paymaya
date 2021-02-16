class paymaya::users {
	user { 'monitor':
		home => '/home/monitor',
		shell => '/bin/bash'
	}

	file { "/home/monitor":
		ensure => directory,
		owner => 'monitor',
		group => 'monitor',
		mode => '0750',
		require => User['monitor']
	}
}
