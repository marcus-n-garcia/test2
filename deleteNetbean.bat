rmdir /s /q C:\"Program Files"\NetBeans-14\
rmdir /s /q %userprofile%\.nbi
reg delete Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nbi-nb-all-14.0.0.220601.0
rmdir /s /q C:\ProgramData\Microsoft\Windows\Start Menu\Programs\"Apache NetBeans"
del C:\Users\Public\Desktop\"Apache NetBeans IDE 14.lnk"