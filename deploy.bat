
REM Define JDK path (modify this according to your JDK installation path)
set "jdk_path=C:\Program Files\Java\jdk-17"

REM Define variables
set "path=C:\Program Files\Apache Software Foundation\Tomcat 10.1\webapps"
set /p "project=Nom du projet: "
set "webinf=temp\WEB-INF"
set "classes=temp\WEB-INF\classes"
set "lib=temp\WEB-INF\lib"
set "src=src"
set "archive=%project%.war"
set "destination=%path%\%archive%"

REM Remove and recreate directories
rmdir /s /q temp
mkdir temp
mkdir %webinf%
mkdir %classes%
mkdir %lib%
mkdir tempJava

REM Copy web.xml
copy /y conf\*.* %webinf%

REM Copy pages
copy /y web\*.* temp\

REM Copy lib
copy /y lib\*.* %lib%


REM Compile Java files

for /r "%src%" %%f in (*.java) do (
    copy /y "%%f" tempJava\
)
"%jdk_path%\bin\javac" -d %classes% tempJava\*.java

REM Create WAR file
"%jdk_path%\bin\jar" cf %archive% -C temp\ .

REM Move WAR file to destination
copy /y %archive% "%path%"
