## IPA

This script provides information about the network configuration, including the private IP address, VPN status, and target machine details (IP address and name).

#### Requirements:
- Shell: `zsh`

#### Features:
- Shows the host's private IP address.
- Checks VPN connection status and displays the HackTheBox IP address if connected.
- Displays the IP address and the name of the victim machine.

#### Usage:
1. Ensure that you have zsh installed and set as your default shell.
2. Modify the network adapter names in the `ipa.sh` script to match your system setup.
3. Execute the `install.sh` script.
4. You can now use the `ipa` tool in your terminal.
5. You can use the `settarget` and `cleartarget` functions to add or remove targets.

#### For example:
##### Add:
```
settarget "Shrek 10.10.10.47"
```
##### Clear:
```
cleartarget
```
