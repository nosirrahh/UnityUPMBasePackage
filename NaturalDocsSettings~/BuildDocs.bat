@echo off
chcp 65001 > nul

echo.
echo Definindo caminhos para a execução.
echo ----------------
echo.

rem Caminho de instalação do NaturalDocs.exe
set naturalDocsPath=C:\Program Files (x86)\Natural Docs
rem Caminho de execução do 'BuildDocs.bat' e onde deve conter o arquivo de configurações.
set naturalDocsConfigPath=%~dp0
rem Caminho para o arquivo de exemplo de configurações para o projeto.
if not "%naturalDocsConfigPath:~-1%"=="\" set "naturalDocsConfigPath=%naturalDocsConfigPath%\"
set exampleProjectFilePath=%naturalDocsConfigPath%ExampleProject.txt

echo naturalDocsPath: %naturalDocsPath%
echo naturalDocsConfigPath: %naturalDocsConfigPath%
echo exampleProjectFilePath: %exampleProjectFilePath%

echo.
echo Executando 'NaturalDocs.exe'.
echo ----------------

cd %naturalDocsPath%
NaturalDocs.exe %naturalDocsConfigPath%

echo.
echo Execução do 'NaturalDocs.exe' finalizada.
echo ----------------
echo.
echo Consulte um exemplo de configurações sugeridas para o arquivo 'Project.txt' gerado no seguinte arquivo:
echo %exampleProjectFilePath%

echo.
echo.
pause