# Script to build the Diesel CLI using database libraries from Vcpkg

This is a script to demonstrate building a static binary of Diesel on Windows using native libraries from Vcpkg. If you have a recent Rust compiler installed, you should be able to just clone this repo and run the script which will set up Vcpkg and run `cargo install diesel_cli` for you.

Right now you have to use master from the source repo of mysqlclient-sys at https://github.com/sgrif/mysqlclient-sys until the next version of the mysqlclient-sys is released.

More information on Vcpkg is available [here](https://github.com/Microsoft/vcpkg). You will need to install VS2015 or VS2017 (the community edition is fine) as required by Vcpkg.

The `install_diesel_cli.cmd` script will create a local Vcpkg tree and install the libraries that diesel requires for a static build.
