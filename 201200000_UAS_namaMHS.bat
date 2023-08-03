@echo off

:login
cls
echo *********************************
echo  Final Projek UAS Sistem Operasi
echo *********************************
echo.
echo =========================
echo        LOGIN USER        
echo =========================
echo.
set /p username=Masukkan username: 
set /p password=Masukkan password: 

rem Cek username dan password
if "%username%"=="AXL" (
  if "%password%"=="ADMIN" (
    goto menu
  )
)

echo Username atau password salah. Silakan coba lagi.
pause
goto login

:menu
cls
echo *************************************
echo            HALAMAN UTAMA
echo *************************************
echo.
echo 1. Menu Akademik
echo 2. Aplikasi Perhitungan
echo 3. Menu Perbaikan Komputer
echo 4. Menu Jaringan Komputer
echo 5. Menu Aplikasi
echo 6. Menu Setting
echo 7. Menu Makanan Eropa
echo 8. Keluar
echo --------------------------------------
echo.

set /p pilihan=Silakan pilih menu (1-7): 

if "%pilihan%"=="1" (
  call menuAplikasi.bat
  goto menu 
) else if "%pilihan%"=="2" (
  call menuAkademik.bat
  goto menu 
) else if "%pilihan%"=="3" (
  call aplikasiPerhitungan.bat
  goto menu 
) else if "%pilihan%"=="4" (
  call menuPerbaikanKomputer.bat
  goto menu
) else if "%pilihan%"=="5" (
  call Menu makanan Eropa.bat
  goto menu
) 

) else if "%pilihan%"=="7" (
  goto selesai
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menu
)

:menuMakananEropa
cls
echo 1. Spageti
echo 2. Steak
pause
set /p pilihan menu anda

if %pilihan% == 1 goto 1
if %pilihan% == 2 goto 2
if %pilihan% == goto menu
goto menu_makanan_eropa

:1
cls
echo.
echo nama makanan = spageti( 15.000)
pause
goto menu

:2
cls
echo.
echo nama makanan = steak(20.000)
pause
goto menu

: goto bagin
:2
keluar
