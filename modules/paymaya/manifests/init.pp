class paymaya (
	Array $pkgs = ['vim','curl','git','wget']
)
{
	contain paymaya::packages
	contain paymaya::users
	contain paymaya::scripts
}

