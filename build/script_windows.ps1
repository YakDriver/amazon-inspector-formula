#Start-Service salt-minion
Start-Process "C:\salt\salt-call.bat --local test.ping"
Start-Process "C:\salt\salt-call.bat --local state.show_sls amazon-inspector"
Start-Process "C:\salt\salt-call.bat --local state.sls amazon-inspector mock=True"
