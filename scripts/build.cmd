@echo off

setlocal
chcp 65001 > nul

SET SRC_PATH=src/МенеджерЗаданий
SET CONFIG_PATH=%SRC_PATH%/Configuration.xml

if not exist %CONFIG_PATH% (
	echo Run me in the root of repo with ./scripts/build.cmd
	exit /B 1
)

call packman load-src %SRC_PATH%
call packman make-cf

echo DONE. CF-file is .packman/1Cv8.cf