@echo off
SETLOCAL

:dir_loop
	echo Create a directory named: 
	set /p directory=
	if "%directory%" equ "" (
		echo Please enter a valid directory
		goto :dir_loop
		)


:pat_loop
	if not exist pat.txt (
		echo Please create a pat.txt file which
		echo contains all your files separated by 
		echo line with correct extension to 
		echo generate into the folder. 
		echo "Have you done it? (y/n)"
		set /p good=
		if not exist pat.txt (
			echo Sorry, no pat.txt detected in current directory
			goto :pat_loop
		) 
	)


:final
	mkdir "%directory%"
	for /F "delims=," %%i in (pat.txt) do (
		cd %directory%
		cd. > %%i
		cd..
	)

ENDLOCAL
