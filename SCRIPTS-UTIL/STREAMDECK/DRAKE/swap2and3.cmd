set rootFolder=%BKB_ROOT%

copy %rootFolder%\PRIVATE\%computername%\Project-2.txt %rootFolder%\PRIVATE\%computername%\Project-TEMP.txt
copy %rootFolder%\PRIVATE\%computername%\Project-3.txt %rootFolder%\PRIVATE\%computername%\Project-2.txt
copy %rootFolder%\PRIVATE\%computername%\Project-TEMP.txt %rootFolder%\PRIVATE\%computername%\Project-3.txt
del %rootFolder%\PRIVATE\%computername%\Project-TEMP.txt



