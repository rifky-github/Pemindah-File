ECHO OFF
title Pemindah File *Dibuat Oleh : Rifky
CLS
:MENU
color 0f
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo Menu :
echo ------------------
ECHO 1 - Pindah Files
ECHO 2 - Buat Folder
ECHO 3 - Info
ECHO 4 - Keluar
echo ------------------
ECHO.
SET /P M= "Pilih nomor brp ? >> " 
IF %M%==1 ( GOTO MOVE ) else (
    IF %M%==2 ( GOTO BUATFOLDER ) else (
    IF %M%==3 ( GOTO INFO ) else (
    IF %M%==4 ( exit ) else (
    goto MENU)
    )
    )
    )

:BUATFOLDER
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo Catatan
echo --------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo --------------------------------------
echo.
SET /P nama= "Bikin Folder namanya apa ?  >> " 
IF "%nama%"=="m" ( GOTO MENU ) else (
    IF "%nama%"=="M" ( GOTO MENU ) else (
    goto TANYA2
)
)

:TANYA2
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo --------------------------------------
echo Nama Folder : %nama%
echo --------------------------------------
echo.
echo Catatan
echo --------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit nama Folder tersebut tulis 'u'
echo --------------------------------------------------
echo.
echo *Contoh C:\user\Document\
SET /P destinasi= "Folder '%nama%' mau ditaruh mana ? >> " 
IF "%destinasi%"=="u" ( GOTO EDITNAMAFOLDER ) else (
    IF "%destinasi%"=="U" ( GOTO BUATFOLDER ) else (
    IF "%destinasi%"=="m" ( GOTO MENU ) else (
    IF "%destinasi%"=="M" ( GOTO MENU ) else (
        goto BUATFOLDER2
    )

    )

    )

)

:EDITNAMAFOLDER
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo --------------------------------------
echo Nama Folder : [SEDANG DIEDIT]
echo --------------------------------------
echo.
echo Catatan
echo --------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo --------------------------------------
echo.
SET /P nama= "Nama Folder mau diganti apa ? >> " 
IF "%nama%"=="u" ( GOTO EDITNAMAFOLDER ) else (
    IF "%nama%"=="U" ( GOTO EDITNAMAFOLDER) else (
    IF "%nama%"=="m" ( GOTO MENU ) else (
    IF "%nama%"=="M" ( GOTO MENU ) else (
        goto TANYA2
    )

    )

    )

)

:BUATFOLDER2
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo --------------------------------------
echo Nama Folder : %nama%
echo Destinasi   : %destinasi%
echo --------------------------------------
echo.
echo Catatan
echo ------------------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit Nama Folder tulis 'j'
echo *jika mau mengedit Destinasi tulis 'h'
echo *jika anda yakin dengan Nama Folder dan Destinasi tulis 'y'
echo -------------------------------------------------------------
echo.
set /p yakin= ">> "

IF %yakin%==m ( goto MENU ) else (
    IF %yakin%==M ( GOTO MENU ) else (
    if %yakin%==y ( GOTO CHECKFOLDER ) else (
    if %yakin%==Y ( GOTO CHECKFOLDER ) else (
    IF %yakin%==t ( goto BUATFOLDER2 ) else (
    IF %yakin%==T ( goto BUATFOLDER2 ) else (
    IF %yakin%==j ( goto EDITNAMA ) else (
    IF %yakin%==J ( goto EDITNAMA ) else (
    IF %yakin%==h ( goto EDITDESTINASI ) else (
    IF %yakin%==H ( goto EDITDESTINASI ) else (
        goto BUATFOLDER2
    )
    )
    )
    )
    )
    )
    )
    )
    )
)

:EDITNAMA
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo --------------------------------------
echo Nama Folder : [SEDANG DIEDIT]
echo Destinasi   : %destinasi%
echo --------------------------------------
echo.
echo Catatan
echo ----------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo ----------------------------------------
echo.
set /p nama= "Nama Folder mau diganti apa ? >> "
IF "%nama%"=="m" ( goto MENU ) else (
    IF "%nama%"=="M" ( GOTO MENU ) else (
    IF "%nama%"=="h" ( goto EDITDESTINASI ) else (
    IF "%nama%"=="H" ( goto EDITDESTINASI ) else (
        goto BUATFOLDER2
    )
    )
    )
)

:EDITDESTINASI
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -----------------------------------------
echo Nama Folder : %nama%
echo Destinasi   : [SEDANG DIEDIT]
echo -----------------------------------------
echo.
echo Catatan
echo -----------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit Nama Folder tulis 'j'
echo -----------------------------------------
echo.
echo *Contoh C:\user\secret\
set /p destinasi= "Destinasi Folder mau diganti dimana ? >> "
IF "%destinasi%"=="m" ( goto MENU ) else (
    IF "%destinasi%"=="M" ( GOTO MENU ) else (
    IF "%destinasi%"=="j" ( goto EDITNAMA ) else (
    IF "%destinasi%"=="j" ( goto EDITNAMA ) else (
        goto BUATFOLDER2
    )
    )
    )
)


:CHECKFOLDER
if exist "%destinasi%\""%nama%" (
    cls
    color c
    ECHO.
    echo --------------------------------------
    echo 	Pemindah File
    echo 	Dibuat Oleh : Rifky
    echo         Versi : 1.0
    echo --------------------------------------
    echo.
    echo Error!
    echo --------------------------------------
    echo Folder "%nama%" Gagal Dibuat!
    echo --------------------------------------
    echo.
    echo Alasan/Tips
    echo =======================================================
    echo *Folder yang anda buat sudah ada di lokasi Destinasi..
    echo *Coba ganti/edit nama Folder...
    echo =======================================================
    echo.
    echo Catatan
    echo -------------------------------------------------------
    echo *jika mau kembali ke menu tulis 'm'
    echo *jika mau mengedit Nama Folder tersebut tulis 'j'
    echo *jika mau mengedit Destinasi tulis 'h'
    echo -------------------------------------------------------
    echo.
    set /p mbalik= ">> "
) else (
    goto PEMBUATANFOLDER
)
IF %mbalik%==m ( goto MENU ) else (
    IF %mbalik%==M ( GOTO MENU ) else (
    if %mbalik%==u ( GOTO BUATFOLDER ) else (
    if %mbalik%==U ( GOTO BUATFOLDER ) else (
    if %mbalik%==j ( GOTO EDITNAMA ) else (
    if %mbalik%==J ( GOTO EDITNAMA ) else (
    if %mbalik%==h ( GOTO EDITDESTINASI ) else (
    if %mbalik%==H ( GOTO EDITDESTINASI ) else (
        goto CHECKFOLDER
    )
    )
    )
    )
    )
    )
    )

)

:PEMBUATANFOLDER
md "%destinasi%\""%nama%"
IF %ERRORLEVEL% EQU 0 ( 
    cls
    color a
    ECHO.
    echo --------------------------------------
    echo 	Pemindah File
    echo 	Dibuat Oleh : Rifky
    echo         Versi : 1.0
    echo --------------------------------------
    echo.
    echo --------------------------------------
    echo Folder "%nama%" Berhasil Dibuat!
    echo --------------------------------------
    echo.
    echo --------------------------------------
    echo Lokasi Folder : %destinasi%
    echo --------------------------------------
    echo.
    echo Catatan
    echo ------------------------------------------
    echo *jika mau kembali ke menu tulis 'm'
    echo *tekan [ENTER] untuk keluar
    echo *jika ingin membuat folder lagi tulis 'f'
    echo ------------------------------------------
    echo.
    set /p yakin= ">> "


) else (
    cls
    color c
    ECHO.
    echo --------------------------------------
    echo 	Pemindah File
    echo 	Dibuat Oleh : Rifky
    echo         Versi : 1.0
    echo --------------------------------------
    echo.
    echo Error!
    echo --------------------------------------
    echo Folder "%nama%" Gagal Dibuat!
    echo --------------------------------------
    echo.
    echo Alasan/Tips
    echo =======================================================
    echo *Folder yang anda buat sudah ada di lokasi Destinasi..
    echo *Coba ganti/edit nama Folder...
    echo =======================================================
    echo.
    echo Catatan
    echo -------------------------------------------------------
    echo *jika mau kembali ke menu tulis 'm'
    echo *jika mau mengedit Nama Folder tulis 'j'
    echo *jika mau mengedit Destinasi tulis 'h'
    echo *jika ingin membuat folder lagi tulis 'f'
    echo *tekan [ENTER] untuk keluar
    echo -------------------------------------------------------
    echo.
    set /p yakin= ">> "
)

IF %yakin%==m ( goto MENU ) else (
    IF %yakin%==M ( GOTO MENU ) else (
    IF %yakin%==j ( goto EDITNAMA ) else (
    IF %yakin%==J ( goto EDITNAMA ) else (
    IF %yakin%==h ( goto EDITDESTINASI ) else (
    IF %yakin%==H ( goto EDITDESTINASI ) else (
    IF %yakin%==f ( goto BUATFOLDER ) else (
    IF %yakin%==F ( goto BUATFOLDER ) else (
         exit
    )
    )
    )
    )
    )
    )
    )    
)

IF %mbalik%==m ( goto MENU ) else (
    IF %mbalik%==M ( GOTO MENU ) else (
        exit
    )
)
REM --------------------------------------------------------------------------------------------------
:INFO
cls
color 3f
echo.
echo  _____        __      
echo ^|_   _^|      / _^|     
echo   ^| ^|  _ __ ^| ^|_ ___  
echo   ^| ^| ^| '_ \^|  _/ _ \ 
echo  _^| ^|_^| ^| ^| ^| ^|^| (_) ^|
echo ^|_____^|_^| ^|_^|_^| \___/ 
echo.
echo Program ini ditulis dengan bahasa BATCH. Program ini dibuat oleh Rifky Ananda Riwendra. Tujuan membuat Program ini adalah untuk mempercepat pemindahan suatu File. Program ini sudah ditulis sebanyak 787 baris
echo.
echo.
echo _______________________________________________
echo.
echo Instagram : https://instagram.com/rifky030705
echo GitHub    : https://github.com/rifky-github/
echo _______________________________________________
set /p Kembali= "Kembali (Y/T) >> "
IF %Kembali%==y ( GOTO MENU ) else (
    IF %Kembali%==Y ( GOTO MENU ) else (
    IF %Kembali%==t ( GOTO INFO ) else (
    IF %Kembali%==T ( GOTO INFO ) else (
    goto INFO)
    )
    )
    )

REM --------------------------------------------------------------------------------------------------


REM --------------------------------------------------------------------------------------------------

:MOVE
cls
echo.
color 0f
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo Catatan
echo --------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo --------------------------------------
echo.
echo *Contoh : C:\user\secret\
set /p answer1= "Lokasi File yang mau dipindah >> "
IF "%answer1%"=="m" ( goto MENU ) else (
    IF "%answer1%"=="M" ( GOTO MENU ) else (
        goto MOVE2
    )    
)

:MOVE2
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit Lokasi File tersebut tulis 'u'
echo -------------------------------------------------
echo.
echo *Contoh : .jpg
SET /P answer2= "Jenis File apa yang mau dipindah? >> " 
IF %answer2%==u ( GOTO EDITMOVE ) else (
    IF %answer2%==U ( GOTO EDITMOVE ) else (
    IF %answer2%==m ( GOTO MENU ) else (
    IF %answer2%==M ( GOTO MENU ) else (
        goto MOVE3
    )

    )

    )

)

:EDITMOVE
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : [SEDANG DIEDIT]
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh C:\user\Document\
SET /P answer1= "Lokasi File yang mau dipindah >> " 
IF "%answer1%"=="m" ( GOTO MENU ) else (
    IF "%answer1%"=="M" ( GOTO MENU ) else (
        goto MOVE2
    )

)


:MOVE3
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : %answer2%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit Lokasi File tersebut tulis 'u'
echo -------------------------------------------------
echo.
echo *Contoh : C:\user\secret\
SET /P answer3= "Destinasi File >> " 
IF "%answer3%"=="u" ( GOTO EDITLOKASI ) else (
    IF "%answer3%"=="U" ( GOTO EDITLOKASI ) else (
    IF "%answer3%"=="m" ( GOTO MENU ) else (
    IF "%answer3%"=="M" ( GOTO MENU ) else (
    IF "%answer3%"=="j" ( GOTO EDITJENIS ) else (
    IF "%answer3%"=="J" ( GOTO EDITJENIS ) else (
        goto VERIFIKASI
    )
    )
    )
    )
    )

)


:EDITJENIS
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : [SEDANG DIEDIT]
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh : .docx
SET /P answer2= "Jenis File mau diganti apa ? >> " 
IF %answer2%==m ( GOTO MENU ) else (
    IF %answer2%==M ( GOTO MENU ) else (
       goto MOVE3
    )
)


:EDITLOKASI
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : [SEDANG DIEDIT]
echo Jenis File yang mau Dipindah  : %answer2%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh : C:\user\video\
SET /P answer1= "Lokasi File yang mau dipindah >> " 
IF "%answer1%"=="m" ( GOTO MENU ) else (
    IF "%answer1%"=="M" ( GOTO MENU ) else (
       goto MOVE3
    )
)

:VERIFIKASI
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : %answer2%
echo Destinasi File                : %answer3%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo *jika mau mengedit Lokasi File tersebut tulis 'u'
echo *jika mau mengedit Jenis File tersebut tulis 'j'
echo *jika yakin tulis 'y'
echo *jika mau mengedit Destinasi File tulis 'h'
echo -------------------------------------------------
echo.
SET /P yakin= "Yakin mau dipindah >> " 
IF %yakin%==j ( GOTO EDITJENIS2 ) else (
    IF %yakin%==J ( GOTO EDITJENIS2 ) else (
    IF %yakin%==m ( GOTO MENU ) else (
    IF %yakin%==M ( GOTO MENU ) else (
    IF %yakin%==u ( GOTO EDITLOKASI2 ) else (
    IF %yakin%==U ( GOTO EDITLOKASI2 ) else (
    IF %yakin%==h ( GOTO EDITDESTINASI ) else (
    IF %yakin%==H ( GOTO EDITDESTINASI ) else (
    IF %yakin%==y ( GOTO MULAIPINDAH ) else (
    IF %yakin%==Y ( GOTO MULAIPINDAH ) else (
       goto VERIFIKASI
    )
    )
    )
    )
    )
    )
    )
    )
    )
)


:EDITJENIS2
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : [SEDANG DIEDIT]
echo Destinasi File                : %answer3%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh : C:\user\video\
SET /P answer2= "Jenis File mau diganti apa ? >> " 
IF %answer2%==m ( GOTO MENU ) else (
    IF %answer2%==M ( GOTO MENU ) else (
       goto VERIFIKASI
    )
)

:EDITLOKASI2
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : [SEDANG DIEDIT]
echo Jenis File yang mau Dipindah  : %answer2%
echo Destinasi File                : %answer3%
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh : C:\user\video\
SET /P answer1= "Lokasi File yang mau dipindah >> " 
IF "%answer1%"=="m" ( GOTO MENU ) else (
    IF "%answer1%"=="M" ( GOTO MENU ) else (
       goto VERIFIKASI
    )
)

:EDITDESTINASI
cls
color 0f
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : %answer2%
echo Destinasi File                : [SEDANG DIEDIT]
echo -------------------------------------------------
echo.
echo Catatan
echo -------------------------------------------------
echo *jika mau kembali ke menu tulis 'm'
echo -------------------------------------------------
echo.
echo *Contoh : C:\user\video\
SET /P answer3= "Lokasi Destinasi File >> " 
IF "%answer3%"=="m" ( GOTO MENU ) else (
    IF "%answer3%"=="M" ( GOTO MENU ) else (
       goto VERIFIKASI
    )
)


:MULAIPINDAH
cls
ECHO.
echo --------------------------------------
echo 	Pemindah File
echo 	Dibuat Oleh : Rifky
echo         Versi : 1.0
echo --------------------------------------
echo.
echo -------------------------------------------------
echo Lokasi File yang mau Dipindah : %answer1%
echo Jenis File yang mau Dipindah  : %answer2%
echo Destinasi File                : %answer3%
echo -------------------------------------------------
echo.
echo Status
echo -------------------------------------------------
move "%answer1%\"*%answer2% "%answer3%\"
echo -------------------------------------------------
IF %ERRORLEVEL% EQU 0 ( 
    color a 
    echo.
    echo Hasil
    echo -------------------------------------------------
    echo Jenis File "%answer2%" Berhasil Dipindah!
    echo -------------------------------------------------
    echo.
    echo Catatan
    echo -------------------------------------------------
    echo *jika mau kembali ke menu tulis 'm'
    echo *jika ingin memindah file lagi tulis 't'
    echo -------------------------------------------------
    echo.
    set /p mbalik= ">> "
) else (
    color c
    echo.
    echo Hasil
    echo -------------------------------------------------
    echo Jenis File "%answer2%" Gagal Dipindah!
    echo -------------------------------------------------
    echo.
    echo Catatan
    echo -------------------------------------------------
    echo *jika mau kembali ke menu tulis 'm'
    echo *jika ingin memindah file lagi tulis 't'
    echo *Tekan [ENTER] untuk keluar
    echo -------------------------------------------------
    echo.
    set /p mbalik= ">> "
)
IF %mbalik%==m ( GOTO MENU ) else (
    IF %mbalik%==M ( GOTO MENU ) else (
    IF %mbalik%==t ( goto MOVE ) else (
    IF %mbalik%==T ( goto MOVE ) else (
    exit )
    )
    )
    )
