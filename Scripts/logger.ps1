$port = New-Object System.IO.Ports.SerialPort COM12,9600,None,8,one
$port.Open()

$filename = "data/trial-01.txt"

Write-Host "Logging to $filename"
Write-Host "Press Ctrl+C to stop."

while ($true) {
    $line = $port.ReadLine()
    $line | Tee-Object -FilePath $filename -Append
}
