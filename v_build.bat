@echo off

goto comment
/* ========================================================================
$File: v_build.bat$
$Date: 6/6/2020$
$Revision: 1$
$Creator: Alec Serra $
    ======================================================================== */
:comment

set /P name="File to sim? "
tttbb %name%
iverilog -o  %name%_tb.vvp %name%_tb.v
vvp %name%_tb.vvp
gtkwave %name%_tb.vcd
 
