set "GOPATH=%SRC_DIR%"

cd src\github.com\mholt\archiver
cd cmd\arc\
go get -v
go build
if errorlevel 1 exit 1

mkdir "%LIBRARY_BIN%"
mv "%GOPATH%\bin\arc" "%LIBRARY_BIN%\arc"
