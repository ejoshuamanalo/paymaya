class paymaya::packages (
	$pkgs = $paymaya::pkgs
)
{
	package { $pkgs:
		ensure => installed
	}
}
