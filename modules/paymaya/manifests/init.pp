class paymaya (
	Array $pkgs = ['vim','curl','git','wget'],
	String $scripts_dir = '/home/monitor/scripts',
	String $src_dir = '/home/monitor/src'
)
{
	contain paymaya::packages
	contain paymaya::users
	contain paymaya::scripts
	contain paymaya::src
	contain paymaya::cron
}

