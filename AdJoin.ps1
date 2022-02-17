$domain = $args[0]
$password = $args[1] | ConvertTo-SecureString -asPlainText -Force
$username =  $args[2]
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
