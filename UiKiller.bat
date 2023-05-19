ECHO OFF
title MadeBy!Kami#6920
cls
:MENU
ECHO.
ECHO .............................................
ECHO 1 Pour supprimer le fichier.
ECHO 2 Pour verifier si le fichier est encore la.
ECHO 3 Pour ouvrir le dossier.
ECHO 4 Pour sortir.
ECHO .............................................
ECHO.
SET /P M=Appuie sur 1, 2, 3 ou 4 et appuie sur ENTRER :
    if %M%==1 GOTO SUPPR
    if %M%==2 GOTO VERIF
    if %M%==3 GOTO OPEN
    if %M%==4 GOTO EXIT
GOTO :MENU
:SUPPR
    taskkill /IM "gameoverlayui.exe" /F
    timeout /t 1 /nobreak
    del "C:\Program Files (x86)\Steam\GameOverlayUI.exe"
    del "C:\Program Files (x86)\Steam\GameOverlayRenderer.log"
    del "C:\Program Files (x86)\Steam\GameOverlayRenderer64.dll"
    del "C:\Program Files (x86)\Steam\GameOverlayUI.exe.log"
    del "C:\Program Files (x86)\Steam\GameOverlayUI.exe.log.last" 
    ECHO Sa mere a ete baisee, recu 5/5
    timeout /t 3 /nobreak
    cls
GOTO :MENU
:VERIF
IF EXIST "C:\Program Files (x86)\Steam\GameOverlayUI.exe" (
	cls 
    ECHO Oui, il est encore la.
) ELSE (
	ECHO Non, il n'est plus la. )
    timeout /t 3 /nobreak
cls
GOTO :MENU
:OPEN
%SystemRoot%\explorer.exe "C:\Program Files (x86)\Steam\"
cls
GOTO :MENU
:EXIT
exit
