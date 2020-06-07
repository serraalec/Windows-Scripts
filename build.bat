@echo off

goto comment
/* ========================================================================
$File: build.bat$
$Date: 5/22/2020$
$Revision: 1$
$Creator: Alec Serra $
    ======================================================================== */
:comment



set CommonCompilerFlags=-MT  -nologo -Gm- -GR- -EHa- -Od -Oi  -W4 -wd4100 -wd4101 -wd4201 -wd4189 -FC -Z7 -DTODOS=0 -BUILD_WINDOWS=1
set CommonLinkerFlags= -opt:ref user32.lib gdi32.lib winmm.lib /SUBSYSTEM:CONSOLE

IF NOT EXIST ..\build mkdir ..\build
pushd ..\build

cl %CommonCompilerFlags% ..\code\tttbb.cpp /link %CommonLinkerFlags%

..\build\tttbb.exe e_sr_latch.v

popd