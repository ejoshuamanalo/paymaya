class paymaya::src (
	$scripts_dir = $paymaya::scripts_dir,
	$src_dir = $paymaya::src_dir
)
{
	file { $src_dir:
		ensure => directory,
		require => Class[paymaya::users]
	}
	file { 'my_memory_check':
		ensure => link,
		path => "${src_dir}/my_memory_check",
		target => "${scripts_dir}/memory_check",
		require => [File[$src_dir],Class[paymaya::scripts]]
	}
}
