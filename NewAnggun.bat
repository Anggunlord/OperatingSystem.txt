@echo off
tittle menu masakan
:setting
color b5
cls
echo ===========================================================
echo                Latihan Menu Masakan         
echo ===========================================================
echo [1] Paket 1 (Ayam Goyeng + Es Teh Anget)            
echo [2] Paket 2 (Ayam Bakar + Teh Anget Dingin)  
echo [3] Paket 3 (Ayam Goreng Krispi)        
echo [4] Paket Premium (Gurame + Cumi)            
echo [5] Paket Gila (Gurame + Seafood)            
echo [6] Exit
echo ===========================================================
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
echo =============================================================
echo         Nama Menu Restaurant
echo =============================================================
echo Nama Paket       : Paket 5
echo Harga            : Rp.250000
echo Keuntungan       : Nasi + Air Putih + Kurma
pause
goto setting

:6
exit
