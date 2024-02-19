Invoke-Command -ComputerName PANG30126 -Credential cua.edu\mgr-garciamarcu -ScriptBlock {

    #Command I want to run on remote computer
    #cmd /c "C:\Program Files\National Instruments\NI Package Manager\nipkg" remove --force-essential --force-locked --yes
    
    #test command
    cmd /c ipconfig
}