@Echo off
setlocal ENABLEDELAYEDEXPANSION

:: Possible paths to check for the installation
set inkscapePath1="C:\Program Files\Inkscape\bin\inkscape.exe"
set inkscapePath2="C:\Program Files\Inkscape\inkscape.exe"
set inkscapePath3="C:\Program Files (x86)\Inkscape\bin\inkscape.exe"
set inkscapePath4="C:\Program Files (x86)\Inkscape\inkscape.exe"


if exist %inkscapePath1% (
	set inkscapePath=%inkscapePath1%
) else (
	if exist %inkscapePath2% (
		set inkscapePath=%inkscapePath2%
	) else (
		if exist %inkscapePath3% (
			set inkscapePath=%inkscapePath3%
		) else (
			if exist %inkscapePath4% (
				set inkscapePath=%inkscapePath4%
			) else (
				echo Can't find Inkscape installation, aborting.
				GOTO end
			)
		)
	)
)


set validInput1=svg
set validInput2=pdf
set validInput3=eps
set validInput4=emf
set validInput5=wmf

set validOutput1=eps
set validOutput2=pdf
set validOutput3=png
set validOutput4=svg

FOR /F "tokens=* USEBACKQ" %%g IN (`%inkscapePath% --version`) do (SET "inkscapeVersion=%%g")
set /a inkscapeMajorVersion=%inkscapeVersion:~9,1%

echo.
echo This script allows you to convert all files in this folder from one file type to another
echo Running with %inkscapeVersion%
echo (type q to quit at any question)
echo.

set valid=0
set sourceType=svg
set outputType=pdf
set dpi=300

:: count how many files we need to convert before converting!
set /a total=0
for /R %%i in (*.%sourceType%) do (
	set /a total=total+1
)
echo Conversion started. Will do %total% file(s).

echo.

set /a count=0
:: Running through all files found with the defined ending
if %inkscapeMajorVersion% NEQ 0 (
	:: Inkscape 1.0 and newer
	for /R %%i in (*.%sourceType%) do (
		set /a count=count+1
		
		:: Create out folder if it does not exist
		if not exist %%~di%%~piout mkdir %%~di%%~piout
		
		echo %%i -^> %%~di%%~piout\%%~ni.%outputType% ^[!count!/%total%^]
		
		%inkscapePath% --batch-process --export-filename="%%~di%%~piout\%%~ni.%outputType%" --export-dpi=%dpi% "%%i"
	)
) else (
	:: Inkscape 0.9.x and older
	for /R %%i in (*.%sourceType%) do (
		set /a count=count+1
		
		echo %%i -^> %%~di%%~piout\%%~ni.%outputType% ^[!count!/%total%^]
		
		if "%outputType%" NEQ "%validOutput4%" (
			%inkscapePath% --without-gui --file="%%i" --export-%outputType%="%%~di%%~piout\%%~ni.%outputType%" --export-dpi=%dpi%
		) else (
			if "%sourceType%" NEQ "pdf" (
				%inkscapePath% --without-gui --file="%%i" --export-pdf="%%~di%%~piout\%%~ni.pdf" --export-dpi=%dpi%
			)
			%inkscapePath% --without-gui -z -f "out\%%~ni.pdf" -l "%%~di%%~piout\%%~ni.%validOutput4%"
			if "%toDelOrNot%" EQU "y" (
				del "%%~ni.pdf" /f /q
			)
		)
	)
)

echo.
echo %count% file(s) converted from %sourceType% to %outputType%! (Saved in out folder)
echo.

:end
exit