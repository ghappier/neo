
TITLE shutdown

SET SLEEP=ping 127.0.0.1 /n

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-registration-center
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-config-server
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-config-client
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-api-gateway
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-provider-user
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-consumer-user
TASKKILL /FI "WINDOWTITLE eq %SERVICE_NAME%*" /IM cmd.exe /F /T

