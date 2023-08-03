@echo off

:menuAkademik
cls
echo Program Saya - Menu Akademik
echo.
echo 1. Penilaian Mahasiswa
echo 2. Laporan Penilaian Mahasiswa (bentuk txt)
echo 3. Kembali ke Menu Utama
echo.

set /p pilihan=Silakan pilih menu (1-3): 

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
set /p nama=Nama: 
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

endlocal

pause
goto menuAkademik
