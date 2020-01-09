$entries = @(
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop', 'ScreenSaveActive', '1', 'String'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop', 'SCRNSAVE.EXE', 'scrnsave.scr', 'String'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop', 'ScreenSaverIsSecure', '1', 'String'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop', 'ScreenSaveTimeOut', '900', 'String'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications', 'NoToastApplicationNotificationOnLockScreen', 1, 'DWord'),
    ('HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments', 'SaveZoneInformation', 2, 'DWord'),
    ('HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments', 'ScanWithAntiVirus', 3, 'DWord'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent', 'ConfigureWindowsSpotlight', 2, 'DWord'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent', 'DisableThirdPartySuggestions', 1, 'DWord'),
    ('HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', 'NoInplaceSharing', 1, 'DWord'),
    ('HKCU:\SOFTWARE\Policies\Microsoft\Windows\Installer', 'AlwaysInstallElevated', 0, 'DWord')
)
foreach ($entry in $entries) {
    $path, $key, $value, $type = $entry 
    if (!(Test-Path $path)) {
        New-Item $path -Force
    }
    Set-ItemProperty $path $key $value -Type $type
}
#asdasdasdads