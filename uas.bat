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
echo 7. Menu Makanan Nusantara
echo 8. Keluar
echo --------------------------------------
echo.

set /p pilihan=Silakan pilih menu (1-7): 

if "%pilihan%"=="1" (
  call menuAkademik.bat
  goto menu 
) else if "%pilihan%"=="2" (
  call aplikasiperhitungan.bat
  goto menu 
) else if "%pilihan%"=="3" (
  call menuperbaikankomputer.bat
  goto menu 
) else if "%pilihan%"=="4" (
  call menuJaringanKomputer.bat
  goto menu
) else if "%pilihan%"=="5" (
  call menuAplikasi.bat
  goto menu
) else if "%pilihan%"=="6" (
  call menuSetting.bat
  goto menu
) else if "%pilihan%"=="7" (
  goto menuMakananNusantara
  goto menu  
) else if "%pilihan%"=="8" (
  goto selesai
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menu
)

@echo off

:menuAkademik
cls
echo Program Saya - Menu Akademik
echo.
echo 1. Penilaian Mahasiswa
echo 2. Laporan Penilaian Mahasiswa (bentuk txt)
echo 3. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-4): 

if "%pilihan%"=="1" (
  goto penilaianMahasiswa
) else if "%pilihan%"=="2" (
  goto laporanPenilaianMahasiswa  
) else if "%pilihan%"=="3" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
  pause
  goto menuAkademik
)

:penilaianMahasiswa
cls
echo Program Saya - Penilaian Mahasiswa
echo.
echo Masukkan nama mahasiswa:
set /p nama=nama: 
echo Masukkan mata kuliah:
set /p matkul=Matkul: 
echo Masukkan nilai mahasiswa:
set /p nilai=Nilai: 

if %nilai% geq 81 (
  set bobot=A
  set angka=4.00
) else if %nilai% geq 76 (
  set bobot=AB
  set angka=3.50
) else if %nilai% geq 71 (
  set bobot=B
  set angka=3.00
) else if %nilai% geq 66 (
  set bobot=BC
  set angka=2.50
) else if %nilai% geq 61 (
  set bobot=C
  set angka=2.00
) else if %nilai% geq 56 (
  set bobot=CD
  set angka=1.50
) else if %nilai% geq 51 (
  set bobot=D
  set angka=1.00
) else if %nilai% geq 0 (
  set bobot=None
  set angka=0
) else (
  echo Nilai tidak valid. Silakan coba lagi.
  pause
  goto penilaianMahasiswa
)

echo.
echo Hasil penilaian:
echo Matkul: %matkul%
echo Bobot: %bobot%
echo Angka: %angka%

pause
goto menuAkademik

:laporanPenilaianMahasiswa
cls
echo Program Saya - Laporan Penilaian Mahasiswa (bentuk txt)
echo.
echo Masukkan nama file laporan (tanpa ekstensi): 
set /p namaFile=Nama File: 

setlocal enabledelayedexpansion

echo.
echo Menyimpan laporan penilaian mahasiswa ke file %namaFile%.txt...
echo.
echo Nama ^|Matkul ^|Nilai ^| Bobot ^| Angka > %namaFile%.txt
echo ---------------------------------------- >> %namaFile%.txt
echo !Nama! ^|!Matkul! ^|!nilai! ^| !bobot! ^| !angka! >> %namaFile%.txt

echo.
echo Laporan penilaian mahasiswa telah disimpan ke file %namaFile%.txt.
echo.
echo Laporan penilaian mahasiswa telah disimpan ke file %namaFile%.txt.

endlocal

pause
goto menuAkademik

@echo off

:menuAplikasiPerhitungan
cls
echo Aplikasi Perhitungan Kalkulator
echo.
echo 1. Penjumlahan (+)
echo 2. Pengurangan (-) 
echo 3. Perkalian   (x)
echo 4. Pembagian   (:)
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih operasi perhitungan (1-5): 

if "%pilihan%"=="1" (
  goto penjumlahan
) else if "%pilihan%"=="2" (
  goto pengurangan
) else if "%pilihan%"=="3" (
  goto perkalian
) else if "%pilihan%"=="4" (
  goto pembagian
) else if "%pilihan%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

:penjumlahan
cls
echo Aplikasi Perhitungan - Penjumlahan
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% + %angka2%
echo.
echo Hasil penjumlahan: %hasil%
pause
goto menuAplikasiPerhitungan

:pengurangan
cls
echo Aplikasi Perhitungan - Pengurangan
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% - %angka2%
echo.
echo Hasil pengurangan: %hasil%
pause
goto menuAplikasiPerhitungan

:perkalian
cls
echo Aplikasi Perhitungan - Perkalian
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a hasil=%angka1% * %angka2%
echo.
echo Hasil perkalian: %hasil%
pause
goto menuAplikasiPerhitungan

:pembagian
cls
echo Aplikasi Perhitungan - Pembagian
echo.

set /p angka1=Masukkan angka pertama: 
set /p angka2=Masukkan angka kedua: 

set /a "hasil=angka1 / angka2"
echo.
echo Hasil pembagian: %hasil%

pause
goto menuAplikasiPerhitungan

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

@echo off

:menu_aplikasi
cls
echo Menu Aplikasi
echo.
echo 1. Aplikasi Microsoft Word
echo 3. Aplikasi Microsoft Excel
echo 4. Aplikasi Microsoft PowerPoint
echo 3. Aplikasi Notepad++
echo 4. Kembali ke Menu Utama
echo.

set /p pilihan_aplikasi=Silakan pilih menu (1-4): 

if "%pilihan_aplikasi%"=="1" (
  "C:\Program Files (x86)\Microsoft Office\Office15\WINWORD.exe"
) else if "%pilihan_aplikasi%"=="2" (
  "C:\Program Files (x86)\Microsoft Office\Office15\EXCEL.exe"
) else if "%pilihan_aplikasi%"=="3" (
  "C:\Program Files (x86)\Microsoft Office\Office15\POWERPNT.exe"  
) else if "%pilihan_aplikasi%"=="3" (
  "C:\Program Files\Notepad++\NOTEPAD++.exe"      
) else if "%pilihan_aplikasi%"=="4" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

pause
goto menu_aplikasi

@echo off

:menuSettingKomputer
cls
echo Menu Setting Komputer
echo.
echo 1. Setting Keyboard
echo 2. Setting Language
echo 3. Setting Sound
echo 4. Setting Date
echo 5. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-5): 

if "%pilihan%"=="1" (
  start control keyboard
) else if "%pilihan%"=="2" (
  start intl.cpl
) else if "%pilihan%"=="3" (
  start SndVol.exe
) else if "%pilihan%"=="4" (
  start timedate.cpl  
) else if "%pilihan%"=="5" (
  goto menu
) else (
  echo Pilihan tidak valid. Silakan coba lagi.
)

pause
goto menuSettingKomputer


:menuMakananNusantara
cls
echo.
echo Menu Makanan
echo 1. Nasi Pecel
echo 2. nasi gudeg
echo 3. Keluar
set /p pilihan=pilihan menu anda:

if %pilihan% == 1 goto 1
if %pilihan% == 2 goto 2
if %pilihan% == 3 goto exit

:1
cls
echo nasi Pecel
echo harga = 15.000
pause
goto menu

:2
cls
echo nasi gudeg
echo harga = 17.000
pause
goto menu


:back
goto begin
:4
goto exit