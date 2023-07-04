@echoo off
color 7
:login
echo ****************************************************************************************
echo                                     LOGIN USER                                         
echo ****************************************************************************************
echo.
echo ----------------------------------------------------------------------------------------
set /p name=     User     :
set /p password= Password :
if %password% == anggun  (
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
echo 1. menu setting
echo 2. menu restaurant
echo 3. Exit
set /p pilihan=pilihan menu anda:
if %pilihan%==1 goto setting
if %pilihan%==2 goto menu restaurant
if %pilihsn%==3 goto exit

:setting
cls
echo ---------------------------------------------------------------------------------------
echo                                       MENU Setting komputer                                          
echo ---------------------------------------------------------------------------------------
echo                           [1] setting Keyboard
echo                           [2] setting date
echo                           [3] setting Language
echo                           [4] setting Add User
echo                           [5] setting Sound control
echo                           [6] Kembali          [0] keluar
echo.
set /p "pilihmenu=masukan Pilihan Menu Setting:"
if %pilihmenu%==1   goto Keyboard
if %pilihmenu%==2   goto date
if %pilihmenu%==3   goto Language
if %pilihmenu%==4   goto User
if %pilihmenu%==5   goto Sound
if %pilihmenu%==6   goto back
if %pilihmenu%==0   goto exit

   :keyboard
   cls
   start control Keyboard
   goto setting
   pause
   :Language
   cls
   start intl.cpl
   goto setting
   pause
   :Date
   cls
   start timedate.cpl
   goto setting
   pause
   :User
   cls
   start Netplwiz.exe
   goto setting
   pause
   :Sound
   cls
   start Sndvol.exe
   goto setting 
   pause
   :back
   goto setting
   :Exit
   exit

:menu restaurant
cls
echo ---------------------------------------------------------------------------------------
echo                                      Menu restaurant
echo ---------------------------------------------------------------------------------------
echo                           [1] setting Paket 1
echo                           [2] setting Paket 2
echo                           [3] setting Paket 3
echo                           [4] setting Paket 4
echo                           [5] setting Paket 5
echo                           [6] kembali                 [7] Keluar
echo.

set /p pilihmenu=Pilih Menu Anda :

if %pilihmenu% == 1 (
  goto 1
) else if %pilihmenu% == 2 (
  goto 2
) else if %pilihmenu% == 3 (
  goto 3
) else if %pilihmenu% == 4 (
  goto 4
) else if %pilihmenu% == 5 (
  goto 5
) else if %pilihmenu% == 6 (
  goto 6
) else if %pilihmenu% == 7 (
  goto 7
)

    :1
    cls
    echo Paket 1
    echo =============================================================
    echo         Nama Menu Restaurant
    echo =============================================================
    echo Nama Paket       : Paket 1
    echo Harga            : Rp.50000
    echo Keuntungan       : Nasi + Air Putih + Kurma
    pause
    goto setting
    :2
    cls
    echo Paket 2
    echo =============================================================
    echo         Nama Menu Restaurant
    echo =============================================================
    echo Nama Paket       : Paket 2
    echo Harga            : Rp.75000
    echo Keuntungan       : Nasi + Air Putih + Kurma
    pause
    goto setting
    :3
    cls
    echo Paket 3
    echo =============================================================
    echo         Nama Menu Restaurant
    echo =============================================================
    echo Nama Paket       : Paket 3
    echo Harga            : Rp.80000
    echo Keuntungan       : Nasi + Air Putih + Kurma
    pause
    goto setting 
    :4
    cls
    echo paket 4
    echo =============================================================
    echo         Nama Menu Restaurant
    echo =============================================================
    echo Nama Paket       : Paket 4
    echo Harga            : Rp.125000
    echo Keuntungan       : Nasi + Air Putih + Kurma
    pause
    goto setting
    :5
    cls
    echo paket 5
    echo =============================================================
    echo         Nama Menu Restaurant
    echo =============================================================
    echo Nama Paket       : Paket 5
    echo Harga            : Rp.250000
    echo Keuntungan       : Nasi + Air Putih + Kurma
    pause
    goto setting
    :6
    goto back
    :7
    exit
