$url = "https://repo.saltstack.com/windows/Salt-Minion-2018.3.3-Py3-x86-Setup.exe"
$output = "$Env:TRAVIS_BUILD_DIR\bootstrap-salt.exe"
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Start-Process -FilePath $output /S

Set-Location "$Env:TRAVIS_BUILD_DIR"
git clone "https://github.com/plus3it/amazon-inspector-formula"
$saltDir = "C:\salt\srv\salt\"
Copy-Item "$Env:TRAVIS_BUILD_DIR\amazon-inspector-formula\" -Destination $saltDir -Recurse
