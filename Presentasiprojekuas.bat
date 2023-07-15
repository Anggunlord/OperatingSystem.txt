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
 goto menu
) else (
echo Password salah
set /p x= enter......!!!
goto login
)

:menu
cls
echo Menu akademik
echo --------------------------------------
echo [1] Penilaian Mahasiswa
echo [2] Laporan Penilaian Mahasiswa
echo [3] Aplikasi perhitungan
echo [4] Menu Perbaikan Komputer
echo [5] Menu Jaringan Komputer
echo [6] Menu Aplikasi
echo [7] Menu Setting
echo [0] Keluar
echo --------------------------------------
set /p "input_menu=Pilih menu: "

if "%input_menu%"=="1" (
    call :penilaian_mahasiswa
) else if "%input_menu%"=="2" (
    call :laporan_penilaian
) else if "%input_menu%"=="3" (
    call :aplikasi_perhitungan
) else if "%input_menu%"=="4" (
    call :menu_perbaikan_komputer
) else if "%input_menu%"=="5" (
    call :menu_jaringan_komputer
) else if "%input_menu%"=="6" (
    call :menu_aplikasi
) else if "%input_menu%"=="7" (
    call :menu_setting
) else if "%input_menu%"=="0" (
    echo Menu Akademik akan keluar. Terima kasih!
	pause
	exit
) else (
    echo Input tidak valid. Silahkan pilih menu yang benar.
	pause
	goto menu
)

:penilaian_mahasiswa
cls
rem =============setting variable==========
echo Penilaian Mahasiswa
echo --------------------------------------
set nilai_AlgoritmaPemrograman=80
set nilai_BahasaIndonesia=84
set nilai_KomputerGrafis=82
set nilai_StrukturData=90
set nilai_OperatingSystem=92
rem ==========Pemanggilan variable=========
echo Nilai Algoritma Pemrograman : %nilai_AlgoritmaPemrograman%
echo Nilai Bahasa Indonesia : %nilai_BahasaIndonesia%
echo Nilai Komputer Grafis : %nilai_KomputerGrafis%
echo Nilai Struktur Data : %nilai_StrukturData%
echo Nilai Operating System : %nilai_OperatingSystem%
pause

:laporan_penilaian
cls
echo Laporan penilaian Mahasiswa
echo ---------------------------------------
set /p nim=Masukan NIM:
set /p nama=Masukan Nama Lengkap:
set /p kelas=Masukan Kelas:
set /p prodi=Masukan Nama Prodi:

set /p algo_pro=Nilai Algoritma Pemrograman:
set /p bhs_ind=Nilai Bahasa Indonesia:
set /p kom_gra=Nilai Komputer Grafis:
set /p str_dat=Nilai Struktur Data:
set /p opr_sys=Nilai Operating System:

rem Grade tiap mata Kuliah
set grade_pro=
if %algo_pro% gtr 0 if %algo_pro% leq 50 set grade_pro=D
if %algo_pro% gtr 50 if %algo_pro% leq 65 set grade_pro=C
if %algo_pro% gtr 65 if %algo_pro% leq 75 set grade_pro=B
if %algo_pro% gtr 75 if %algo_pro% leq 90 set grade_pro=AB
if %algo_pro% gtr 90 if %algo_pro% leq 100 set grade_pro=A
if not defined grade_pro set grade_pro=Grade Anda Tidak di Temukan

set grade_ind=
if %bhs_ind% gtr 0 if %bhs_ind% leq 50 set grade_ind=D
if %bhs_ind% gtr 50 if %bhs_ind% leq 65 set grade_ind=C
if %bhs_ind% gtr 65 if %bhs_ind% leq 75 set grade_ind=B
if %bhs_ind% gtr 75 if %bhs_ind% leq 90 set grade_ind=AB
if %bhs_ind% gtr 90 if %bhs_ind% leq 100 set grade_ind=A
if not defined grade_ind set grade_ind=Grade Anda Tidak di Temukan

set grade_gra=
if %kom_gra% gtr 0 if %kom_gra% leq 50 set grade_gra=D
if %kom_gra% gtr 50 if %kom_gra% leq 65 set grade_gra=C
if %kom_gra% gtr 65 if %kom_gra% leq 75 set grade_gra=B
if %kom_gra% gtr 75 if %kom_gra% leq 90 set grade_gra=AB
if %kom_gra% gtr 90 if %kom_gra% leq 100 set grade_gra=A
if not defined grade_gra set grade_gra=Grade Anda Tidak di Temukan

set grade_dat=
if %str_dat% gtr 0 if %str_dat% leq 50 set grade_dat=D
if %str_dat% gtr 50 if %str_dat% leq 65 set grade_dat=C
if %str_dat% gtr 65 if %str_dat% leq 75 set grade_dat=B
if %str_dat% gtr 75 if %str_dat% leq 90 set grade_dat=AB
if %str_dat% gtr 90 if %str_dat% leq 100 set grade_dat=A
if not defined grade_dat set grade_dat=Grade Anda Tidak di Temukan

set grade_sys=
if %opr_sys% gtr 0 if %opr_sys% leq 50 set grade_sys=D
if %opr_sys% gtr 50 if %opr_sys% leq 65 set grade_sys=C
if %opr_sys% gtr 65 if %opr_sys% leq 75 set grade_sys=B
if %opr_sys% gtr 75 if %opr_sys% leq 90 set grade_sys=AB
if %opr_sys% gtr 90 if %opr_sys% leq 100 set grade_sys=A
if not defined grade_sys set grade_sys=Grade Anda Tidak di Temukan

rem perhitungan
set /a rata=(algo_pro+bhs_ind+kom_gra+str_dat+opr_sys)/5

set grade_rata=
if %rata% gtr 0 if %rata% leq 50 set grade_rata=D
if %rata% gtr 50 if %rata% leq 65 set grade_rata=C
if %rata% gtr 65 if %rata% leq 75 set grade_rata=B
if %rata% gtr 75 if %rata% leq 90 set grade_rata=AB
if %rata% gtr 90 if %rata% leq 100 set grade_rata=A
if not defined grade_rata set grade_rata=Grade Anda Tidak di Temukan

rem Menampilkan
echo ---------------------------------------------------------------
echo                  Kartu Hasil Studi                             
echo ---------------------------------------------------------------
echo NIM Anda              : %nim%
echo Nama Lengkap Anda     : %nama%
echo Kelas                 : %kelas%
echo Program Studi         : %prodi%
echo ---------------------------------------------------------------
echo Mata Kuliah                  Nilai              Grade                 
echo ---------------------------------------------------------------
echo 1. Algoritma Pemrograman     %algo_pro%         %grade_pro%    
echo 2. Bahasa Indonesia          %bhs_ind%          %grade_ind%
echo 3. Komputer Grafis           %kom_gra%          %grade_gra%
echo 4. Struktur Data             %str_dat%          %grade_dat%
echo 5. Operating System          %opr_sys%          %grade_sys%
echo ---------------------------------------------------------------
echo Rata-Rata                    %rata%             %grade_rata%
echo ---------------------------------------------------------------
echo.
pause

:aplikasi_perhitungan
cls
echo Aplikasi perhitungan
echo ---------------------
echo [1] kalkulator
echo [0] keluar
echo ---------------------
if "%input_aplikasi_perhitungan%"=="1" (
 call :kalkulator
pause
) else if "%input_aplikasi_perhitungan%"=="0" (
echo Menu Aplikasi perhitungan akan keluar. Terima kasih!
pause
exit
) else (
echo Input tidak valid. Silahkan pilih menu yang benar.
pause
)
:kalkulator
start calc.exe
pause

:menu_perbaikan_komputer
cls
echo menu Perbaikan Komputer
echo -----------------------
echo [1] Mulai Ulang Komputer
echo [0] keluar
echo -----------------------
if "%input_menu_perbaikan_komputer%"=="1" (
 call :mulai_ulang_komputer
pause
) else if "%input_menu_perbaikan_komputer%"=="0" (
echo Menu Perbaikan Komputer akan keluar. Terima kasih!
pause
exit
) else (
echo Input tidak valid. Silahkan pilih menu yang benar.
pause
)
:mulai_ulang_komputer
cls
shutdown /i  /l  /s  /sg  /r  /g  /a  /p  /h  /e  /o
pause
goto menu_perbaikan_komputer

:menu_jaringan_komputer
cls
echo Aplikasi perhitungan
echo ---------------------
echo [1] Cek IP
echo [0] keluar
echo ---------------------
if "%menu_jaringan_komputer%"=="1" (
 call :Cek_IP
pause
) else if "%menu_jaringan_komputer%"=="0" (
echo Menu Aplikasi perhitungan akan keluar. Terima kasih!
pause
exit
) else (
echo Input tidak valid. Silahkan pilih menu yang benar.
pause
)
:Cek_IP
cls
Ipconfig
pause
goto menu_jaringan_komputer
	  
:menu_aplikasi
cls
echo Aplikasi perhitungan
echo ---------------------
echo [1] word
echo [0] keluar
echo ---------------------
if "%menu_aplikasi%"=="1" (
 call :word
pause
) else if "%menu_aplikasi%"=="0" (
echo Menu Aplikasi perhitungan akan keluar. Terima kasih!
pause
exit
) else (
echo Input tidak valid. Silahkan pilih menu yang benar.
pause
)
:word
cls
start Winword.Exe
pause
goto menu_aplikasi
	  
:menu_setting
cls
echo Aplikasi perhitungan
echo ---------------------
echo [1] setting keyboard
echo [0] keluar
echo ---------------------
if "%menu_setting%"=="1" (
 call :keyboard
pause
) else if "%menu_setting%"=="0" (
echo Menu Aplikasi perhitungan akan keluar. Terima kasih!
pause
exit
) else (
echo Input tidak valid. Silahkan pilih menu yang benar.
pause
)
:keyboard
cls
start control keyboard
pause
goto menu_setting

:exit
exit


   


  

