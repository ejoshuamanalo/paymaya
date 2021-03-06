class paymaya::cron (
	$src_dir = $paymaya::src_dir
)
{
	cron { 'mem_check':
		command => "/bin/bash ${src_dir}/my_memory_check",
		user => 'monitor',
		minute => '*/10',
		require => [Class[paymaya::src],Class[paymaya::users]]
	}
}
