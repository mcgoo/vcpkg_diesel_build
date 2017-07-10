# Demo of a Cargo build helper for Vcpkg

This is a script to demonstrate building a static binary of Diesel on Windows using native libraries from Vcpkg found by the vcpkg-rs cargo build helper. If you have a recent Rust nightly installed, you should be able to just clone this repo and run the script which will set up Vcpkg and run `cargo install diesel_cli` for you.

More information on Vcpkg is available [here](https://github.com/Microsoft/vcpkg). You will need to install VS2015 or VS2017 (the community edition is fine) as required by Vcpkg.

Dynamically linked builds work with stable Rust when `VCPKGRS_DYNAMIC=1` is set in your environment. Until Rust 1.19 is released, static linking against the libraries in Vcpkg requires a nightly compiler in order to use the `-Ctarget-feature=+crt-static` option.

The `install_diesel_cli.cmd` script will create a local vcpkg tree and install the libraries that diesel requires for a static build. If you want to build using stable Rust, you will need to install the DLL builds of the database drivers using `vcpkg --triplet x64-windows install libmysql libpq sqlite3`.
