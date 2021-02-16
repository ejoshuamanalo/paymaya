class paymaya (
	Array $pkgs = ['vim','curl','git']
)
{
	contain paymaya::packages
	contain paymaya::users
	contain paymaya::scripts
}
