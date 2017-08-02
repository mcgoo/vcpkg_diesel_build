cd %~dp0

if not exist vcpkg git clone https://github.com/Microsoft/vcpkg

rem Install database drivers in vcpkg
set VCPKG_ROOT=%~dp0\vcpkg
if not exist %VCPKG_ROOT%\vcpkg.exe call %VCPKG_ROOT%\bootstrap-vcpkg.bat
%VCPKG_ROOT%\vcpkg --triplet x64-windows-static install libmysql libpq sqlite3 || exit /b

set RUSTFLAGS=-Ctarget-feature=+crt-static
cargo install -f diesel_cli || exit /b
pause