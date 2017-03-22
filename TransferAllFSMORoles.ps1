$NewRoleHolder = Read-Host -Prompt 'Input Name of New FSMO Master Server'
Move-ADDirectoryServerOperationMasterRole -Identity $NewRoleHolder -OperationMasterRole 0,1,2,3,4