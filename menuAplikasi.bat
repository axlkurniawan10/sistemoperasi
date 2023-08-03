@echo off

:menu_aplikasi
cls
echo Menu Aplikasi
echo.
echo 1. Aplikasi Microsoft Word
echo 2. Aplikasi Microsoft Excel
echo 3. Aplikasi Microsoft PowerPoint
echo 4. Aplikasi Notepad++
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan_aplikasi=Silakan pilih menu (1-5): 

if "%pilihan_aplikasi%"=="1" (
  "C:\Program Files (x86)\Microsoft Office\Office15\WINWORD.exe"
) else if "%pilihan_aplikasi%"=="2" (
  "C:\Program Files (x86)\Microsoft Office\Office15\EXCEL.exe"
) else if "%pilihan_aplikasi%"=="3" (
  "C:\Program Files (x86)\Microsoft Office\Office15\POWERPNT.exe"  
) else if "%pilihan_aplikasi%"=="4" (
  "C:\Program Files\Notepad++\NOTEPAD++.exe"      
) else if "%pilihan_aplikasi%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

pause
goto menu_aplikasi