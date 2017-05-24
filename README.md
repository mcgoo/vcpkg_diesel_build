# Cargo build helper for vcpkg demo
A script to demonstrate building Diesel on Windows using native libraries from vcpkg found by the vcpkg-rs cargo build helper.
More information on vcpkg is available [here](https://github.com/Microsoft/vcpkg)

Until Rust 1.19 is released this requires a nightly compiler in order to use the `-Ctarget-feature=+crt-static` option.

The `build_diesel_static.cmd` script will create a local vcpkg tree and install the libraries that diesel requires. You will need VS2015 or VS2017 (the community edition is fine) as required by vcpkg.
