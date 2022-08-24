# IPvMe

A PowerShell module to find your WAN IP address.


## Basic Example

This module contains one very important cmdlet:

```powershell
PS /home/colin> Get-WANIPAddress

Type  IP Address
----  ----------
IPv4  192.0.2.1
IPv6  2001:db8::1
```

## Filtering

Filtering can be done via pipeline, `Where-Object`, or parameters.

```powershell
PS C:\> Get-WANIPAddress | Where Type -eq 'IPv6'

PS C:\> Get-WANIPAddress -IPv6Only
```

## Services Supported

Because some people like to have a choice, this module supports multiple IP-finding services:
* IP6.me (default)
* IPify
* MyIP

More may be supported in future releases.
