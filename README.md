# Cargo build helper for vcpkg demo
A script to demonstrate building a static binary of Diesel on Windows using native libraries from vcpkg found by the vcpkg-rs cargo build helper. This enables `cargo install diesel_cli`. (You have to set an environment variable, and install vcpkg, but that's pretty much it.)

More information on vcpkg is available [here](https://github.com/Microsoft/vcpkg)

Dynamic linking builds work with stable Rust. Until Rust 1.19 is released, static linking against the libraries in vcpkg requires a nightly compiler in order to use the `-Ctarget-feature=+crt-static` option.

The `build_diesel_static.cmd` script will create a local vcpkg tree and install the libraries that diesel requires. You will need VS2015 or VS2017 (the community edition is fine) as required by vcpkg.
