# stackoverflow
<a href='https://stackoverflow.com/questions/61861334/batch-command-prompt-works-but-neither-file-cmd-nor-file-bat'>
batch: command prompt works but neither file.cmd nor file.bat
</a>

# input
<hr />
<h2>set /p directory=</h2>
<b>similar to ruby, for instructional messages, echo it before the line of set /p variable</b>
<br />
```batch<br />
echo Create a directory named: <br />
set /p directory=<br />
```
<br /><br />
<li>
* in batch scripts, user input should be described with double quotes and double percentage signs, for example "%directory%", otherwise the whitespace mess up. <br />
```batch<br />
rem collected variable above is written followed then as:<br />
"%directory%"<br />
rem for example<br />
if "%directory%" equ "" ()<br />
rem which validates empty input<br />
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
* iterate each line of pat.txt: <br />
```batch<br />
rem cmd<br />
for /F "delims=," %i in (pat.txt) do ()<br />
```
* attention that batch iteration differs from cmd iteration, which in batch, the variable must be %%i, otherwise it won't work. <br />
```batch<br />
rem batch<br />
for /F "delims=," %%i in (pat.txt) do ()<br />
```
</li>

# others
<hr />
<br /><br />
<li>
* documentation: use a rem at the start of the line. 
</li>