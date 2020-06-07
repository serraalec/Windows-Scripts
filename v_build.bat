@echo off
set /P name="File to sim? "
tttbb %name%
iverilog -o  %name%_tb.vvp %name%_tb.v
vvp %name%_tb.vvp
gtkwave %name%_tb.vcd
 