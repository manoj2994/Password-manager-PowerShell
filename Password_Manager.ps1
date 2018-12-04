$Password = @{gmail = '2P3a4d5f8dk8'; facebook = 'poxjfrusjco993635';
    twitter = 'hdheyxmcmk';
    instagram = 'djadgyuidd'
    github = 'skdjhsdisjo'
}

     
function Get-Password {

    
    [CmdletBinding()]
    param(
        # Parameter help description
        [Parameter(Mandatory=$True)]
        [AllowNull()]
        [AllowEmptyCollection()]
        [AllowEmptyString()]
        [string]
        $for
    )
    
    if ($for -eq '') {

        write-host "Please Enter the name of the account type to get password"

    }
    elseif ($password[$for] -ne $null) {
         
        $password[$for] | clip.exe

        Write-Host "Password Succesfully Copied to the clipboard" 

    }
    else {
   
        Write-Host "The Account you entered is not exists"


    }


    
    
}



