# stackoverflow
<a href='https://stackoverflow.com/questions/61861334/batch-command-prompt-works-but-neither-file-cmd-nor-file-bat'>
batch: command prompt works but neither file.cmd nor file.bat
</a>

# input
<hr />
<h2>set /p directory=</h2>
<b>similar to ruby, for instructional messages, echo it before the line of set /p variable</b>
```batch
echo Create a directory named: 
set /p directory=
```
<br /><br />
<li>
* in batch scripts, user input should be described with double quotes and double percentage signs, for example "%directory%", otherwise the whitespace mess up. 
```batch
rem collected variable above is written followed then as:
"%directory%"
rem for example
if "%directory%" equ "" ()
rem which validates empty input
```
</li>
<li>
* validate empty input: if "%directory%" equ "" (statement)
</li>

# loop
<hr />
<h2>:loopname</h2>
<b>bat files continue to run in line order, even if it meets a loop, until meets goto :eof. usually deveopers use the structure which set loops in below, and use a goto: eof to seperate code into two parts, the first part is calling</b>
<br /><br />
<li>
*while looping until get wanted result: set a loop, use if condition, if not satisfied, goto the loop itself. 
</li>

# iteration
<hr />
<br /><br />
<li>
* iterate each line of pat.txt: 
```batch
rem cmd
for /F "delims=," %i in (pat.txt) do ()
```
* attention that batch iteration differs from cmd iteration, which in batch, the variable must be %%i, otherwise it won't work. 
```batch
rem batch
for /F "delims=," %%i in (pat.txt) do ()
```
</li>

# others
<hr />
<br /><br />
<li>
* documentation: use a rem at the start of the line. 
</li>
