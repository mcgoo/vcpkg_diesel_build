
cd %~dp0

git clone https://github.com/Microsoft/vcpkg
git clone https://github.com/mcgoo/diesel

rem Install database drivers in vcpkg
set VCPKG_ROOT=%~dp0\vcpkg
call %VCPKG_ROOT%\bootstrap-vcpkg.bat
%VCPKG_ROOT%\vcpkg install libmysql:x64-windows-static libpq:x64-windows-static sqlite3:x64-windows-static

rem Build diesel
cd diesel
set RUSTFLAGS=-Ctarget-feature=+crt-static
git checkout vcpkg
cd diesel_cli
cargo run --no-default-features --features="use-vcpkg postgres sqlite"

