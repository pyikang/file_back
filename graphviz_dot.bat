@echo off
set file_name=%1
set in_file_name=%file_name%.gv
set out_file_name=%file_name%.png
dot -T png %in_file_name% -o %out_file_name%