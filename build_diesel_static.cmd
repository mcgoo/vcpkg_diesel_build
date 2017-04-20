cd %~dp0

set VCPKG_ROOT=%~dp0\vcpkg-static
set VCPKG_ALL_STATIC=on
set VCPKG_ALL_DYNAMIC=

cd diesel\diesel_cli
cargo clean
cargo build
