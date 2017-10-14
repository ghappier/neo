
TITLE startup

SET SLEEP=ping 127.0.0.1 /n
SET PROJECT_PATH=D:\EclipseWorkspaces\SpringCloud\neo
SET VERSION=1.0.0

%SLEEP% 1 > nul
SET SERVICE_NAME=neo-registration-center
START CMD /K "TITLE %SERVICE_NAME% && java -jar %PROJECT_PATH%\%SERVICE_NAME%\target\%SERVICE_NAME%-%VERSION%.jar"

%SLEEP% 10 > nul
SET SERVICE_NAME=neo-config-server
START CMD /K "TITLE %SERVICE_NAME% && java -jar %PROJECT_PATH%\%SERVICE_NAME%\target\%SERVICE_NAME%-%VERSION%.jar"

%SLEEP% 20 > nul
SET SERVICE_NAME=neo-config-client
START CMD /K "TITLE %SERVICE_NAME% && java -jar %PROJECT_PATH%\%SERVICE_NAME%\target\%SERVICE_NAME%-%VERSION%.jar"
