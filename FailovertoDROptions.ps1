

#Startup
Import-Module VMware.PowerCLI -Verbose
	clear
	write-host
	write-host " Please enter a file path for exports" -ForegroundColor yellow
	#$Global:FilePath = Read-Host " location" 
	Disconnect-VIServer -Force -Confirm:$false
	Connect-VIServer *vCENTER*
	clear
	

#Define VMs
function VPF-ReplicatedVMs
{
    param (
        [string]$SCLUTitle = 'Select a VM'
    )
    Clear-Host
	Write-Host 
    Write-Host " ================ Select a VM ================" -ForegroundColor green
    Write-Host 
    Write-Host " 1: *VM*"
	Write-Host " 2: *VM*"	
    Write-Host " 3: *VM*" 
    Write-Host " 4: *VM*"
	Write-Host " 5: *VM*"
	Write-Host " 6: *VM*"
	Write-Host
	Write-Host " L: List Replicated VMs currently running in Reigate"
	Write-Host 
	Write-Host " Q: Quit"
}

#Instructions
#*VM* = Enter VM Name for menu
#$global:VMChoice = Get-VM *ENTER VM NAME*		 
#$global:PrimaryDC = "ENTER PRIMARY DC NAME"
#$global:FailoverNetwork = "ENTER FAILOVER PORT GROUP NAME"
#$global:FailoverNetworkIP =  "ENTER FAILOVER IP ADDRESS"
#$global:FailoverNetworkSubNet = "ENTER FAILOVER SUBNET MASK"
#$global:FailoverNetworkGW = "ENTER FAILOVER GATEWAY ADDRESS"
#$global:FailoverNetworkDNS = "ENTER FAILOVER DNS ADDRESS"



#Choose a VM
function VPF-Choice-ReplicatedVM
{
VPF-ReplicatedVMs –Title 'Select a VM'
$selection = Read-Host " Please make a selection"
 switch ($selection)
  {
     '1' {
		 clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM "*VM*"		 
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } '2' {
		 clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM *VM*
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } '3' {
         clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM *VM*
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } '4' {
         clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM *VM*
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } '5' {
         clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM *VM*
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } '6' {
         clear
		 Write-Host
		 Write-Host " Please enter VM admin details" 
		 $global:VMChoice = Get-VM *VM*
		 $GuestCred = $Host.UI.PromptForCredential("Please enter credentials", "Enter Guest credentials for $global:VMChoice", "", "")
			$global:PrimaryDC = "*DC*"
			$global:FailoverNetwork = "*PG*"
			$global:FailoverNetworkIP =  "*IP*"
			$global:FailoverNetworkSubNet = "*SN*"
			$global:FailoverNetworkGW = "*GW*"
			$global:FailoverNetworkDNS = "*DNS*"
			If ((get-vm $global:VMChoice | get-datacenter) -eq $global:PrimaryDC) {clear; VPF-Choice-VMOptions} Else {Write-Host "VM is currently located in $global:PrimaryDC please failover first" -ForegroundColor Red; Start-Sleep -Second 5; clear; VPF-Choice-ReplicatedVM}
		 
     } 'L' {
         clear
			get-vm *VM*, *VM*, *VM*, *VM*, *VM*, *VM* | where {($_ | Get-Datacenter) -like "REI"}
			write-host
				Write-Host -NoNewLine ' Press any key to continue...';
				$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
			clear
			VPF-Choice-ReplicatedVM
		 
     } 'Q' {
		 #Write-Host
		 #clear
		 Exit
     } 
  }
 }
clear

#VM Options
function VPF-VMOptions
{
    param (
        [string]$SCLUTitle = 'What would you like to do?'
    )
    Clear-Host
	Write-Host 
    Write-Host " ================ What would you like to do? ================" -ForegroundColor green
    Write-Host 
    Write-Host " 1: Change PortGroup " 
    Write-Host " 2: Power on VM" 
    Write-Host " 3: Reconfigure IP"
	Write-Host 
	Write-Host " Q: Quit"
}


function VPF-Choice-VMOptions
{
VPF-VMOptions –Title 'What would you like to do?'
$selection = Read-Host " Please make a selection"
 switch ($selection)
  {
     '1' {
		 clear
         Get-VM $global:VMChoice | Get-NetworkAdapter | select Parent, Name, NetworkName
		 write-host
		 write-host " Setting network...."
		 Get-VM $global:VMChoice | Set-NetworkAdapter -Portgroup $global:FailoverNetwork
		 Get-VM $global:VMChoice | Get-NetworkAdapter | select Parent, Name, NetworkName
		 write-host
			Write-Host -NoNewLine 'Press any key to continue...';
			$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
		 clear
		 VPF-Choice-ReplicatedVM
     } '2' {
		 Start-VM -VM $global:VMChoice
		 Start-Sleep -Second 2
		 Get-VM $global:VMChoice
		 write-host
			Write-Host -NoNewLine 'Press any key to continue...';
			$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
		 clear
		 VPF-Choice-ReplicatedVM
     } '3' {
		 If ((Get-VM $global:VMChoice).PowerState -eq "PoweredOn")
				#Set-VMGuestNetworkInterface has been deprecated 
				#{get-vm $global:VMChoice | Set-VMGuestNetworkInterface -VMGuestNetworkInterface $vmGuestNetworkInterface -GuestCredential $localCreds -IP $global:FailoverNetworkIP -Netmask $global:FailoverNetworkSubNet -Gateway $global:FailoverNetworkGW -DNS $global:FailoverNetworkDNS}
				{
				Function Set-WinVMIP ($VM, $GC, $IP, $SNM, $GW){
					$netsh = "c:\windows\system32\netsh.exe interface ip set address ""Local Area Connection"" static $IP $SNM $GW 1"
					Write-Host "Setting IP address for $VM..."
					Invoke-VMScript -VM $VM -HostCredential $HC -GuestCredential $GC -ScriptType bat -ScriptText $netsh
					Write-Host "Setting IP address completed."
					}
						Set-WinVMIP $global:VMChoice $GuestCred $global:FailoverNetworkIP $global:FailoverNetworkSubNet $global:FailoverNetworkGW }
			Else
				{write-host " Please power on $global:VMChoice."
				Write-Host -NoNewLine 'Press any key to continue...';
				$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
				clear
				VPF-Choice-ReplicatedVM
				}
				
		 
		 clear
		 VPF-Choice-ReplicatedVM
     }  'q' {
         $VCChoice = "N/A"
		 write-host " You chose N/A, Goodbye!" -ForegroundColor red
		 Start-Sleep -Second 2
		 Exit
     } 
  }
 }
 
 VPF-Choice-ReplicatedVM
