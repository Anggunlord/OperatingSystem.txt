@echo off
tittle menu aplikasi
color 7
:login
echo ****************************************************************************************
echo                                     LOGIN USER                                         
echo ****************************************************************************************
echo.
echo ----------------------------------------------------------------------------------------
set /p name=     User     :
set /p password= Password :
if %password% == lordanggun  (
 goto begin
) else (
echo Password salah
set /p x= enter......!!!
goto login
)

:begin
cls
echo ========================================================================================
echo                                        MENU                                             
echo ========================================================================================
echo 1. word
echo 2. exel
echo 3. power point
echo 4. exit
echo.
set /p pilihan=pilihan menu anda:
if %pilihan%==1 goto word
if %pilihan%==2 goto exel
if %pilihsn%==3 goto power point
if %pilihan%==4 goto exit

:word
C:\Program Files (x86)\Microsoft Office\Office16
goto begin
pause
:exel
C:\Program Files (x86)\Microsoft Office\Office16
goto begin
pause
:power point
C:\Program Files (x86)\Microsoft Office\Office16
goto begin
pause

:begin
cls
echo ----------------------------------------------------------------------------------------
echo                                  MENU JARINGAN                                          
echo ----------------------------------------------------------------------------------------
echo                                  [1] Cek IP
echo                                  [2] Ping Domain
echo                                  [3] Setting Connection
echo                                  [4] registing
echo                                  [5] Diagnostic tool
echo                                  [6] kembali          [0] keluar
echo.
set /p "pilihmenu=masukan Pilihan Menu Setting:"
if %pilihmenu%==1   goto Cek IP
if %pilihmenu%==2   goto Ping Domain
if %pilihmenu%==3   goto Setting Connection
if %pilihmenu%==4   goto registing
if %pilihmenu%==5   goto Diagnostic tool
if %pilihmenu%==6   goto back
if %pilihmenu%==0   goto exit

   :Cek IP
	cls
	Ipconfig
	pause
	goto setting
	:Ping Domain
	set domain=%COMPUTERNAME%
	
	ping %domain%
	pause
	goto setting
	:setting Connection
	control /name Microsoft.NetworkAndSharingCenter
	:registing
	regedit /s "lokasi_file_registri.reg"
	:Diagnostic tool
	echo Menjalankan system file checker...
	sfc /scannow
	
	echo.
	echo Menjalankan Disk Check...
	chkdsk C: /f /r
	
	echo.
	echo proses diagnostic selesai.
	
	pause
	:back
	goto setting
	:exit
	exit
