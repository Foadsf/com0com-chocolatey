$name = 'com0com'
# Use the signed version URL
$url = 'http://downloads.sourceforge.net/project/com0com/com0com/3.0.0.0/com0com-3.0.0.0-i386-and-x64-signed.zip'
$kind = 'EXE'
$silent = '/S'

$tools = Split-Path $MyInvocation.MyCommand.Definition
$zip = Join-Path $tools "$name.zip"

# Download the signed ZIP package
Get-ChocolateyWebFile $name $zip $url

# Extract the ZIP package directly into the tools folder.
Get-ChocolateyUnzip $zip $tools

# Choose the installer executable based on OS architecture.
if ([Environment]::Is64BitOperatingSystem) {
  $exeFileName = 'Setup_com0com_v3.0.0.0_W7_x64_signed.exe'
}
else {
  $exeFileName = 'Setup_com0com_v3.0.0.0_W7_x86_signed.exe'
}
$exe = Join-Path $tools $exeFileName

# Install the package using the selected executable.
Install-ChocolateyInstallPackage $name $kind $silent $exe

# Cleanup the ZIP file
Remove-Item $zip -Force -Recurse

Write-ChocolateySuccess $name
