@echo off

:menuJaringanKomputer
cls
echo Menu Jaringan Komputer
echo.
echo 1. Pemeriksaan Koneksi Internet
echo 2. Cek IP Address Komputer
echo 3. Pengecekan Ipconfig
echo 4. Ping Google
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-5): 

if "%pilihan%"=="1" (
  cls
  echo Menjalankan pemeriksaan koneksi internet...
  ping www.google.com -n 1 >nul
  if %errorlevel% equ 0 (
    echo Koneksi internet terhubung.
  ) else (
    echo Koneksi internet tidak terhubung.
  )
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="2" (
  cls
  ipconfig | findstr /i "IPv4"
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="3" (
  cls
  echo Menjalankan pengecekan ipconfig...
  ipconfig
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="4" (
  cls
  echo Menjalankan ping ke Google...
  ping www.google.com -n 4
  pause
  goto menuJaringanKomputer
) else if "%pilihan%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuJaringanKomputer
)
