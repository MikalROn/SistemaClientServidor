echo "++++++++  Iniciando Servidor ++++++++"

copy /y "index.jsp" "apache-tomcat-8.5.100\webapps\ROOT"

cd .\apache-tomcat-8.5.100\

set JRE_HOME=C:\Program Files (x86)\Java\jre-1.8

.\bin\startup.bat