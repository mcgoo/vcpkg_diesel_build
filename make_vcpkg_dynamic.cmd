
cd %~dp0
git clone https://github.com/Microsoft/vcpkg vcpkg-dll
cd vcpkg-dll
call bootstrap-vcpkg.bat
rem echo x > Downloads\AnswerYesToAll 
vcpkg install libmysql:x64-windows libpq:x64-windows sqlite3:x64-windows
