---
external help file: IPvMe-help.xml
Module Name: IPvMe
online version: https://www.github.com/rhymeswithmogul/IPvMe-PowerShell/man/en-US/Get-WanIpAddress.md
schema: 2.0.0
---

# Get-WanIpAddress

## SYNOPSIS
Find your public IPv4 and/or IPv6 address.

## SYNTAX

### DualStack (Default)
```
Get-WanIpAddress [-Service <String>] [<CommonParameters>]
```

### IPv4Only
```
Get-WanIpAddress [-IPv4Only] [-Service <String>] [<CommonParameters>]
```

### IPv6Only
```
Get-WanIpAddress [-IPv6Only] [-Service <String>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet will connect to an Internet service in order to find your device's WAN IPv4 and/or IPv6 addresses.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-WANIPAddress

Type  IP Address
----  ----------
IPv4  192.0.2.100
IPv6  2001:db8::100
```

Without any parameters, this cmdlet will connect to the default IP address reporting service and find the IPv4 and IPv6 addresses of the primary network interface.

## PARAMETERS

### -IPv4Only
Return only the computer's IPv4 address.

```yaml
Type: SwitchParameter
Parameter Sets: IPv4Only
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPv6Only
Return only the computer's IPv6 address.

```yaml
Type: SwitchParameter
Parameter Sets: IPv6Only
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Service
By default, this cmdlet will connect to the website ip6.me to find this device's WAN IP address.  However, if you would prefer to use another service, you may specify it here.

By using this cmdlet with one of these services, you agree to the service's own terms of use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ipify, ip6.me, MyIP

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Net.IPAddress[]
This cmdlet returns one or more IP addresses.

## NOTES
If this computer has multiple Internet connections, the operating system will decide which one to use.  This is left up to the OS and is not configurable by this version of the cmdlet.

Also, if the computer has multiple IPv6 addresses, the same note applies;  the computer's default IPv6 address will be used.

## RELATED LINKS

[Get-NetIPAddress]()
