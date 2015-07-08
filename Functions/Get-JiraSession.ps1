﻿function Get-JiraSession
{
    [CmdletBinding()]
    param()

    process
    {
        if ($MyInvocation.MyCommand.Module.PrivateData)
        {
            Write-Debug "[Get-JiraSession] Module private data exists"
            if ($MyInvocation.MyCommand.Module.PrivateData.Session)
            {
                Write-Debug "[Get-JiraSession] A Session object is saved; outputting"
                Write-Output $MyInvocation.MyCommand.Module.PrivateData.Session
            } else {
                Write-Debug "[Get-JiraSession] No Session objects are saved"
                Write-Verbose "No Jira sessions have been saved."
            }
        } else {
            Write-Debug "[Get-JiraSession] No module private data is defined. No saved sessions exist."
            Write-Verbose "No Jira sessions have been saved."
        }
    }
}