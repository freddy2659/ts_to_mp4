REM @echo off
setlocal enabledelayedexpansion
SET "ffmpeg=C:\Users\Jono\Pictures\Camera Roll\test\ffmpeg"
SET "indir=C:\Users\Jono\Pictures\Camera Roll\test\in\"
SET "outdir=C:\Users\Jono\Pictures\Camera Roll\test\out\"
for %%f in ("%indir%"*.ts) do (
   SET "infile=%indir%%%~nf.ts"
   SET "outfile=%outdir%%%~nf.mp4"
   "%ffmpeg%" -i "!infile!" "!outfile!"
)
echo Done