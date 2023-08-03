@echo off

:menuPerbaikanKomputer
cls
echo Menu Perbaikan Komputer
echo.
echo 1. Scan Disk
echo 2. Defrag
echo 3. Disk Clean Up
echo 4. Register
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-5): 

if "%pilihan%"=="1" (
  cls
  echo Menjalankan Scan Disk...
  chkdsk /f
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="2" (
  cls
  echo Menjalankan Defrag...
  defrag C: /v
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="3" (
  cls
  echo Menjalankan Disk Clean Up...
  cleanmgr
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="4" (
  cls
  echo Menjalankan Register...
  regedit
  pause
  goto menuPerbaikanKomputer
) else if "%pilihan%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuPerbaikanKomputer
)
