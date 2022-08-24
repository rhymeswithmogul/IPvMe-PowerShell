#Requires -Version 5.1
New-Variable -Option 'Constant' -Name 'UserAgent' -Value "PowerShell/$($PSVersionTable.PSVersion) IPvMe/$((Get-Module -Name 'IPvMe').Version)"

Function Get-WanIpAddress {
	[CmdletBinding(DefaultParameterSetName='DualStack')]
	[OutputType([IPAddress[]])]
	[Alias('Get-WanIpAddresses', 'Get-PublicIPAddress', 'Get-PublicIPAddresses')]
	Param(
		[Parameter(ParameterSetName='IPv4Only')]
		[Switch] $IPv4Only,

		[Parameter(ParameterSetName='IPv6Only')]
		[Switch] $IPv6Only,

		[ValidateSet('ip6.me', 'MyIP')]
		[String] $Service = 'ip6.me'
	)

	$IPAddresses = [IPAddress[]]@()

	If (-Not $IPv6Only) {
		Write-Debug "Connecting to ${Service} to find an IPv4 adddress."
		$Params = @{'AddressFamily' = 'IPv4'}
		$IPAddresses += &$("Invoke-${Service}") @Params
	}
	If (-Not $IPv4Only) {
		Write-Debug "Connecting to ${Service} to find an IPv6 adddress."
		$Params = @{'AddressFamily' = 'IPv6'}
		$IPAddresses += &$("Invoke-${Service}") @Params
	}

	Return $IPAddresses
}

Function Invoke-ipify {
	[OutputType([IPAddress])]
	Param(
		[Parameter(Mandatory)]
		[ValidateSet('IPv4','IPv6')]
		[String] $AddressFamily
	)

	$IPAddress = $null
	Try {
		If ($AddressFamily = 'IPv4') {
			$IPAddress = [IPAddress](
				Invoke-RestMethod -Uri 'https://api.ipify.org' -UserAgent $UserAgent
			)
		}
		Else <# IPv6 #> {
			$IPAddress = [IPAddress](
				Invoke-RestMethod -Uri 'https://api64.ipify.org' -UserAgent $UserAgent
			)
			If ($IPAddress.AddressFamily -ne 'InterNetworkV6') {
				$IPAddress = $null
			}
		}
	}
	Catch {
		Write-Warning "Failed to get $AddressFamily address from api.ipify.org."
	}

	Return $IPAddress
}

Function Invoke-ip6.me {
	[OutputType([IPAddress])]
	Param(
		[Parameter(Mandatory)]
		[ValidateSet('IPv4','IPv6')]
		[String] $AddressFamily
	)

	$IPAddress = $null

	Try {
		$IPAddress = [IPAddress](
			((Invoke-RestMethod -Uri "https://ip$($AddressFamily[3])only.me/api/" -UserAgent $UserAgent) -Split ',')[1]
		)
	}
	Catch {
		Write-Warning "Failed to get $AddressFamily address from ip$($AddressFamily[3])only.me."
	}

	Return $IPAddress
}

Function Invoke-MyIP {
	[OutputType([IPAddress])]
	Param(
		[ValidateSet('IPv4','IPv6')]
		[String] $AddressFamily
	)

	$IPAddress = $null

	Try {
		$IPAddress = [IPAddress](
			Invoke-RestMethod -Uri "https://api$($AddressFamily[3]).my-ip.io/ip.txt" -UserAgent $UserAgent
		)
	}
	Catch {
		Write-Warning "Failed to get $AddressFamily address from api$($AddressFamily[3]).my-ip.io."
	}

	Return $IPAddress
}
