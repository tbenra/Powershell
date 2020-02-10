<# Computer\HKEY_CLASSES_ROOT\Directory\Background\shell\Vm_touch erstellen
    (Standard) Namen vergeben
    Neuen (Unter)Schlüssel anlegen: command 
    (Standard): Powershell "C:\Pfad\zum\Skript\VmTouch.ps1"
#>
$PathToShare = "/Nas/Data"

$path = (Get-Location).Path.Replace("\","/").Replace((Get-Location).Drive.Name,$PathToShare).Replace(":","")
Write-Host $path
ssh tobias@192.168.10.1 vmtouch -vt $path
Write-Host "Beliebige Taste zum Beenden druecken"
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');