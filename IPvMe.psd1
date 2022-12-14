<#
IPvMe PowerShell module -- module manifest
Copyright (C) 2022 Colin Cogle.

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <https://www.gnu.org/licenses/>.
#>

@{

# Script module or binary module file associated with this manifest.
RootModule = 'src/IPvMe.psm1'

# Version number of this module.
ModuleVersion = '1.0.1'

# Supported PSEditions
CompatiblePSEditions = @('Core', 'Desktop')

# ID used to uniquely identify this module
GUID = '6d29cb88-b3c3-4d6c-9228-47bfe49783f3'

# Author of this module
Author = 'Colin Cogle <colin@colincogle.name>'

# Copyright statement for this module
Copyright = '(c) 2022 Colin Cogle. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Find your WAN IPv4 and/or IPv6 address.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = @('src/IPAddress.Types.ps1xml')

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @('src/IPAddress.Format.ps1xml')

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
#NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Get-WANIPAddress')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = ''

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @('Get-WANIPAddresses', 'Get-PublicIPAddress', 'Get-PublicIPAddresses')

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = @(
	'en-US/about_IPvMe.help.txt',
	'en-US/IPvMe-help.xml',
	'src/IPAddress.Format.ps1xml',
	'src/IPAddress.Types.ps1xml',
	'src/IPvMe.psm1',
	'AUTHORS',
	'CHANGELOG.md',
	'CODE_OF_CONDUCT.md',
	'CONTRIBUTING.md',
	'INSTALL.md',
	'IPvMe.psd1',
	'LICENSE',
	'NEWS.md',
	'README.md'
)

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

	PSData = @{

		# Tags applied to this module. These help with module discovery in online galleries.
		Tags = @('IP', 'IPv4', 'IPv6', 'address', 'dual-stack', 'VPN', 'Tor', 'public', 'Internet', 'test')

		# A URL to the license for this module.
		LicenseUri = 'https://www.gnu.org/licenses/agpl-3.0.html'

		# A URL to the main website for this project.
		ProjectUri = 'https://github.com/rhymeswithmogul/IPvMe-PowerShell'

		# A URL to an icon representing this module.
		#IconUri = ''

		# ReleaseNotes of this module
		ReleaseNotes = 'First release!'

		# Prerelease string of this module
		# Prerelease = ''

		# Flag to indicate whether the module requires explicit user acceptance for install/update/save
		RequireLicenseAcceptance = $false

		# External dependent modules of this module
		# ExternalModuleDependencies = @()

	} # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

