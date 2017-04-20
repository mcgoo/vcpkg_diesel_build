
cd %~dp0
git clone https://github.com/Microsoft/vcpkg vcpkg-static
cd vcpkg-static
call bootstrap-vcpkg.bat
rem echo x > Downloads\AnswerYesToAll 
vcpkg install libmysql:x64-windows-static libpq:x64-windows-static sqlite3:x64-windows-static
