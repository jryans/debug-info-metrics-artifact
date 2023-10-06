## Linking

### GCC

gcc-13
-save-temps
-no-integrated-cpp
-wrapper /Users/jryans/Projects/dbgcov/bin/wrapper
--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
-liconv
-o tar
buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o
xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o
tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o
../lib/libtar.a
../gnu/libgnu.a

### LLVM

wllvm \
--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
-g \
-fno-inline \
-fno-discard-value-names \
-Xclang -disable-O0-optnone \
-liconv \
-o tar \
buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o \
xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o \
tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o \
../lib/libtar.a \
../gnu/libgnu.a

## Compiling

### GCC

gcc-13 -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    -save-temps -no-integrated-cpp -wrapper /Users/jryans/Projects/dbgcov/bin/wrapper --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v -MT tar.o -MD -MP -MF .deps/tar.Tpo -c -o tar.o tar.c

... first calls ...

/Users/jryans/Projects/dbgcov/bin/wrapper /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -MD tar.d -MF .deps/tar.Tpo -MP -MT tar.o -D__DYNAMIC__ -D HAVE_CONFIG_H tar.c -fPIC -mmacosx-version-min=13.0.0 -mtune=core2 -fpch-preprocess -o tar.i

... wrapper calls ...

gcc-13 -E -M -MF .deps/tar.Tpo -E -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -MP -MT tar.o -D__DYNAMIC__ -D HAVE_CONFIG_H tar.c -fPIC -mmacosx-version-min=13.0.0 -mtune=core2 -fpch-preprocess -o tar.i -M

... this calls ...

/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -M -M -MF .deps/tar.Tpo -MP -MT tar.o -D__DYNAMIC__ -D __DYNAMIC__ -D HAVE_CONFIG_H -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk tar.c -o tar.i -fPIC -mtune=core2 -mmacosx-version-min=13.0.0 -fPIC -fpch-preprocess -dumpbase tar.c -dumpbase-ext .c

### LLVM

wllvm -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone  -v -MT tar.o -MD -MP -MF .deps/tar.Tpo -c -o tar.o tar.c

... first calls ...

"/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang-15" -cc1 -triple x86_64-apple-macosx13.0.0 -Wundef-prefix=TARGET_OS_ -Werror=undef-prefix -Wdeprecated-objc-isa-usage -Werror=deprecated-objc-isa-usage -emit-obj -mrelax-all --mrelax-relocations -disable-free -clear-ast-before-backend -main-file-name tar.c -mrelocation-model pic -pic-level 2 -mframe-pointer=all -ffp-contract=on -fno-rounding-math -funwind-tables=2 -fcompatibility-qualified-id-block-type-checking -fvisibility-inlines-hidden-static-local-var -target-cpu penryn -tune-cpu generic -mllvm -treat-scalable-fixed-error-as-warning -debug-info-kind=standalone -dwarf-version=4 -debugger-tuning=lldb -target-linker-version 857.1 -v -fcoverage-compilation-dir=/Users/jryans/Projects/tar/src -resource-dir /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0 -dependency-file .deps/tar.Tpo -MT tar.o -sys-header-deps -MP -D HAVE_CONFIG_H -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -internal-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include -internal-isystem /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/include -internal-externc-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -fdebug-compilation-dir=/Users/jryans/Projects/tar/src -ferror-limit 19 -stack-protector 1 -fblocks -fencode-extended-block-signature -fregister-global-dtors-with-atexit -fgnuc-version=4.2.1 -fno-inline -fmax-type-align=16 -fcolor-diagnostics -disable-O0-optnone -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o tar.o -x c tar.c
