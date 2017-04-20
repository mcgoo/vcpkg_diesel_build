# Cargo build helper for vcpkg demo
Some scripts to demonstrate building Diesel on Windows using native libraries from vcpkg found by the vcpkg-rs cargo build helper.
More information on vcpkg is available here https://github.com/Microsoft/vcpkg


```
git clone --recursive http://github.com/mcgoo/vcpkg_diesel_build
cd vcpkg_diesel_build
make_vcpkg_static
build_diesel_static
```

And you should end up with a working statically linked diesel.exe. The changes to the build scripts are pretty minimal - it works much like pkg-config-rs.

Everything is self contained to the checkout dir. The scripts will create a local vcpkg tree and install the libs 
that diesel requires. The vcpkg build helper can also   You will need VS2015 or VS2017 (the community edition is fine) as required by vcpkg.
