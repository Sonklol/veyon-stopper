#$host.UI.RawUI.WindowTitle = "VEYON STOPPER"

while(1 -ne 0){
    $var = Get-Process -Name veyon-worker -ErrorAction SilentlyContinue | Select-String veyon-worker -ErrorAction SilentlyContinue
    while($var -like "System.Diagnostics.Process (veyon-worker)")
    {
        $var = Get-Process -Name veyon-worker -ErrorAction SilentlyContinue | Select-String veyon-worker -ErrorAction SilentlyContinue
        Get-Process -Name veyon-worker -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
        [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
        [System.Windows.Forms.MessageBox]::Show('Veyon Stopped','WARNING')
        Write-Host 'Veyon Stopped'
        Get-Date | Select-Object DateTime
    }
}