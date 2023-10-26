#!/usr/bin/env zsh
#set -x
export CC="zig cc -Wno-unused-command-line-argument -target x86_64-macos"
make CC="$CC" clean
make CC="$CC"
mv -v cpuid ./bin/macos/cpuid
make CC="$CC" clean
export CC="zig cc -Wno-unused-command-line-argument -target x86_64-linux-gnu"
make CC="$CC"
mv -v cpuid ./bin/linux/cpuid
make CC="$CC" clean
export CC="zig cc -Wno-unused-command-line-argument -target x86_64-windows-gnu"
make CC="$CC"
mv -v cpuid ./bin/windows/cpuid.exe
make CC="$CC" clean
export CC="zig cc -Wno-unused-command-line-argument"
make clean
make
