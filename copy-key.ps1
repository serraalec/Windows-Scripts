$route = Read-Host "Enter route"
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh $route "cat >> .ssh/authorized_keys"