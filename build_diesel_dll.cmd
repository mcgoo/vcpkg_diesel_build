
cd %~dp0

set VCPKG_ROOT=%~dp0\vcpkg-dll
set VCPKG_ALL_DYNAMIC=on
set VCPKG_ALL_STATIC=

cd diesel\diesel_cli
cargo clean
cargo build
