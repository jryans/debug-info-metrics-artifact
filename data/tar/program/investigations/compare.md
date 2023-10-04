## LLVM

### Compile

wllvm -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone  -v -c -o compare.o compare.c
clang version 15.0.0 (git@github.com:llvm/llvm-project.git 4ba6a9c9f65bbc8bd06e3652cb20fd4dfc846137)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin
 (in-process)
 "/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang-15" -cc1 -triple x86_64-apple-macosx13.0.0 -Wundef-prefix=TARGET_OS_ -Werror=undef-prefix -Wdeprecated-objc-isa-usage -Werror=deprecated-objc-isa-usage -emit-obj -mrelax-all --mrelax-relocations -disable-free -clear-ast-before-backend -main-file-name compare.c -mrelocation-model pic -pic-level 2 -mframe-pointer=all -ffp-contract=on -fno-rounding-math -funwind-tables=2 -fcompatibility-qualified-id-block-type-checking -fvisibility-inlines-hidden-static-local-var -target-cpu penryn -tune-cpu generic -mllvm -treat-scalable-fixed-error-as-warning -debug-info-kind=standalone -dwarf-version=4 -debugger-tuning=lldb -target-linker-version 857.1 -v -fcoverage-compilation-dir=/Users/jryans/Projects/tar/src -resource-dir /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0 -D HAVE_CONFIG_H -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -internal-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include -internal-isystem /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/include -internal-externc-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -fdebug-compilation-dir=/Users/jryans/Projects/tar/src -ferror-limit 19 -stack-protector 1 -fblocks -fencode-extended-block-signature -fregister-global-dtors-with-atexit -fgnuc-version=4.2.1 -fno-inline -fmax-type-align=16 -fcolor-diagnostics -disable-O0-optnone -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o compare.o -x c compare.c
clang -cc1 version 15.0.0 based upon LLVM 15.0.0 default target x86_64-apple-darwin22.6.0
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/Library/Frameworks"
ignoring duplicate directory ".."
ignoring duplicate directory "../gnu"
ignoring duplicate directory "../lib"
#include "..." search starts here:
#include <...> search starts here:
 .
 ..
 ../gnu
 ../lib
 /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks (framework directory)
End of search list.

### Link

wllvm   --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone  -v  -liconv -o tar buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o  ../lib/libtar.a ../gnu/libgnu.a
clang version 15.0.0 (git@github.com:llvm/llvm-project.git 4ba6a9c9f65bbc8bd06e3652cb20fd4dfc846137)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin
 "/usr/bin/ld" -demangle -lto_library /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/libLTO.dylib -dynamic -arch x86_64 -platform_version macos 13.0.0 13.0.0 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o tar -liconv buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o ../lib/libtar.a ../gnu/libgnu.a -lSystem /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/lib/darwin/libclang_rt.osx.a

## GCC (wrapped)

### Compile

gcc-13 -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    -D __EDG__ -D __GNUC__=10 -D __clang__ -save-temps -g -no-integrated-cpp -wrapper /Users/jryans/Projects/dbgcov/bin/wrapper --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v -c -o compare.o compare.c
Using built-in specs.
COLLECT_GCC=gcc-13
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '-no-integrated-cpp' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /Users/jryans/Projects/dbgcov/bin/wrapper /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -D__DYNAMIC__ -D HAVE_CONFIG_H -D __EDG__ -D __GNUC__=10 -D __clang__ compare.c -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=13.0.0 -mtune=core2 -g -fworking-directory -fpch-preprocess -o compare.i
Running dbgcov with args: -driver gcc-13 -E -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -D__DYNAMIC__ -D HAVE_CONFIG_H -D __EDG__ -D __GNUC__=10 -D __clang__ compare.c -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=13.0.0 -mtune=core2 -g -fworking-directory -fpch-preprocess -o compare.i
Using built-in specs.
COLLECT_GCC=gcc-13
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COLLECT_GCC_OPTIONS='-E' '-E' '-v' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-iprefix' '/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/' '-isysroot' '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-D' '__DYNAMIC__' '-D' 'HAVE_CONFIG_H' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-fPIC' '-feliminate-unused-debug-symbols' '-mtune=core2' '-g' '-fworking-directory' '-fpch-preprocess' '-o' 'compare.i' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport'
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -D__DYNAMIC__ -D __DYNAMIC__ -D HAVE_CONFIG_H -D __EDG__ -D __GNUC__=10 -D __clang__ -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk compare.c -o compare.i -fPIC -feliminate-unused-debug-symbols -mtune=core2 -mmacosx-version-min=13.0.0 -fPIC -feliminate-unused-debug-symbols -fworking-directory -fpch-preprocess -g -fworking-directory -dumpbase compare.c -dumpbase-ext .c
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed"
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/Library/Frameworks"
ignoring duplicate directory "../"
ignoring duplicate directory "../gnu"
ignoring duplicate directory "../lib"
#include "..." search starts here:
#include <...> search starts here:
 .
 ..
 ../gnu
 ../lib
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks
End of search list.
<command-line>: warning: "__GNUC__" redefined
<built-in>: note: this is the location of the previous definition
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-E' '-E' '-v' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-iprefix' '/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/' '-isysroot' '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-D' '__DYNAMIC__' '-D' 'HAVE_CONFIG_H' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-fPIC' '-feliminate-unused-debug-symbols' '-mtune=core2' '-g' '-fworking-directory' '-fpch-preprocess' '-o' 'compare.i' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-dumpdir' 'compare.'
output should go to compare.i.dbgcov
In file included from compare.c:29:
In file included from common.h:67:
../gnu/xvasprintf.h:47:24: warning: '__format__' attribute argument not supported: gnu_printf [-Wignored-attributes]
   47 |        __attribute__ ((__format__ (
      |                        ^
../gnu/xvasprintf.h:50:24: warning: '__format__' attribute argument not supported: gnu_printf [-Wignored-attributes]
   50 |        __attribute__ ((__format__ (
      |                        ^
2 warnings generated.
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '-no-integrated-cpp' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /Users/jryans/Projects/dbgcov/bin/wrapper /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -fpreprocessed compare.i -fPIC -feliminate-unused-debug-symbols -quiet -dumpbase compare.c -dumpbase-ext .c -mmacosx-version-min=13.0.0 -mtune=core2 -g -version -o compare.s
GNU C17 (Homebrew GCC 13.1.0) version 13.1.0 (x86_64-apple-darwin22)
	compiled by GNU C version 13.1.0, GMP version 6.2.1, MPFR version 4.2.0-p4, MPC version 1.3.1, isl version isl-0.26-GMP

warning: MPFR header version 4.2.0-p4 differs from library version 4.2.0-p12.
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: a0bf4d0d0735c68538e5636fa646cc36
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '-no-integrated-cpp' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2'
 /Users/jryans/Projects/dbgcov/bin/wrapper as -arch x86_64 -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -mmacosx-version-min=13.0 -mllvm -x86-pad-for-align=false -force_cpusubtype_ALL -o compare.o compare.s
expr: syntax error
Apple clang version 15.0.0 (clang-1500.0.40.1)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang" -cc1as -triple x86_64-apple-macosx13.0.0 -filetype obj -main-file-name compare.s -target-cpu penryn -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -fdebug-compilation-dir=/Users/jryans/Projects/tar/src -dwarf-debug-producer "Apple clang version 15.0.0 (clang-1500.0.40.1)" -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -dwarf-version=4 -mrelocation-model pic --mrelax-relocations -mllvm -x86-pad-for-align=false -mllvm -disable-aligned-alloc-awareness=1 -o compare.o compare.s
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '-no-integrated-cpp' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2' '-dumpdir' 'compare.'

### Link

gcc-13   -D __EDG__ -D __GNUC__=10 -D __clang__ -save-temps -g -no-integrated-cpp -wrapper /Users/jryans/Projects/dbgcov/bin/wrapper --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v  -liconv -o tar buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o  ../lib/libtar.a ../gnu/libgnu.a
Using built-in specs.
COLLECT_GCC=gcc-13
COLLECT_LTO_WRAPPER=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/lto-wrapper
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '-no-integrated-cpp' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-o' 'tar' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2' '-dumpdir' 'tar.'
 /Users/jryans/Projects/dbgcov/bin/wrapper /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/collect2 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ -dynamic -arch x86_64 -macosx_version_min 13.0.0 -o tar -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13 -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../.. -liconv buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o ../lib/libtar.a ../gnu/libgnu.a -lemutls_w -lgcc -lSystem -no_compact_unwind -rpath @loader_path -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc/x86_64-apple-darwin22/13 -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current -idsym
-macosx_version_min has been renamed to -macos_version_min
duplicate symbol '_iscntrl' in:

## GCC (unwrapped)

### Compile

gcc-13 -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    -D __EDG__ -D __GNUC__=10 -D __clang__ -save-temps -g  --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v -c -o compare.o compare.c
Using built-in specs.
COLLECT_GCC=gcc-13
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -D__DYNAMIC__ -D HAVE_CONFIG_H -D __EDG__ -D __GNUC__=10 -D __clang__ compare.c -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=13.0.0 -mtune=core2 -g -fworking-directory -fpch-preprocess -o compare.i
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed"
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/Library/Frameworks"
ignoring duplicate directory "../"
ignoring duplicate directory "../gnu"
ignoring duplicate directory "../lib"
#include "..." search starts here:
#include <...> search starts here:
 .
 ..
 ../gnu
 ../lib
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks
End of search list.
<command-line>: warning: "__GNUC__" redefined
<built-in>: note: this is the location of the previous definition
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -fpreprocessed compare.i -fPIC -feliminate-unused-debug-symbols -quiet -dumpbase compare.c -dumpbase-ext .c -mmacosx-version-min=13.0.0 -mtune=core2 -g -version -o compare.s
GNU C17 (Homebrew GCC 13.1.0) version 13.1.0 (x86_64-apple-darwin22)
	compiled by GNU C version 13.1.0, GMP version 6.2.1, MPFR version 4.2.0-p4, MPC version 1.3.1, isl version isl-0.26-GMP

warning: MPFR header version 4.2.0-p4 differs from library version 4.2.0-p12.
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: a0bf4d0d0735c68538e5636fa646cc36
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2'
 as -arch x86_64 -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -mmacosx-version-min=13.0 -mllvm -x86-pad-for-align=false -force_cpusubtype_ALL -o compare.o compare.s
Apple clang version 15.0.0 (clang-1500.0.40.1)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang" -cc1as -triple x86_64-apple-macosx13.0.0 -filetype obj -main-file-name compare.s -target-cpu penryn -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -fdebug-compilation-dir=/Users/jryans/Projects/tar/src -dwarf-debug-producer "Apple clang version 15.0.0 (clang-1500.0.40.1)" -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -dwarf-version=4 -mrelocation-model pic --mrelax-relocations -mllvm -x86-pad-for-align=false -mllvm -disable-aligned-alloc-awareness=1 -o compare.o compare.s
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2' '-dumpdir' 'compare.'

### Link

gcc-13   -D __EDG__ -D __GNUC__=10 -D __clang__ -save-temps -g  --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v  -liconv -o tar buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o  ../lib/libtar.a ../gnu/libgnu.a
Using built-in specs.
COLLECT_GCC=gcc-13
COLLECT_LTO_WRAPPER=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/lto-wrapper
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-D' '__EDG__' '-D' '__GNUC__=10' '-D' '__clang__' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-o' 'tar' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2' '-dumpdir' 'tar.'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/collect2 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ -dynamic -arch x86_64 -macosx_version_min 13.0.0 -o tar -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13 -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../.. -liconv buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o ../lib/libtar.a ../gnu/libgnu.a -lemutls_w -lgcc -lSystem -no_compact_unwind -rpath @loader_path -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc/x86_64-apple-darwin22/13 -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current -idsym
-macosx_version_min has been renamed to -macos_version_min
duplicate symbol '_iscntrl' in:

## GCC (unwrapped, without compiler defines)

### Compile

gcc-13 -DHAVE_CONFIG_H -I. -I..  -I../gnu -I../ -I../gnu -I../lib -I../lib    -save-temps -g  --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v -c -o compare.o compare.c
Using built-in specs.
COLLECT_GCC=gcc-13
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -E -quiet -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -iprefix /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/ -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -D__DYNAMIC__ -D HAVE_CONFIG_H compare.c -fPIC -feliminate-unused-debug-symbols -mmacosx-version-min=13.0.0 -mtune=core2 -g -fworking-directory -fpch-preprocess -o compare.i
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include"
ignoring duplicate directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed"
ignoring nonexistent directory "/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/../../../../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../../../../x86_64-apple-darwin22/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/Library/Frameworks"
ignoring duplicate directory "../"
ignoring duplicate directory "../gnu"
ignoring duplicate directory "../lib"
#include "..." search starts here:
#include <...> search starts here:
 .
 ..
 ../gnu
 ../lib
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include
 /usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/include-fixed
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks
End of search list.
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/cc1 -fpreprocessed compare.i -fPIC -feliminate-unused-debug-symbols -quiet -dumpbase compare.c -dumpbase-ext .c -mmacosx-version-min=13.0.0 -mtune=core2 -g -version -o compare.s
GNU C17 (Homebrew GCC 13.1.0) version 13.1.0 (x86_64-apple-darwin22)
	compiled by GNU C version 13.1.0, GMP version 6.2.1, MPFR version 4.2.0-p4, MPC version 1.3.1, isl version isl-0.26-GMP

warning: MPFR header version 4.2.0-p4 differs from library version 4.2.0-p12.
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: a0bf4d0d0735c68538e5636fa646cc36
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2'
 as -arch x86_64 -v -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -mmacosx-version-min=13.0 -mllvm -x86-pad-for-align=false -force_cpusubtype_ALL -o compare.o compare.s
Apple clang version 15.0.0 (clang-1500.0.40.1)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang" -cc1as -triple x86_64-apple-macosx13.0.0 -filetype obj -main-file-name compare.s -target-cpu penryn -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -fdebug-compilation-dir=/Users/jryans/Projects/tar/src -dwarf-debug-producer "Apple clang version 15.0.0 (clang-1500.0.40.1)" -I . -I .. -I ../gnu -I ../ -I ../gnu -I ../lib -I ../lib -dwarf-version=4 -mrelocation-model pic --mrelax-relocations -mllvm -x86-pad-for-align=false -mllvm -disable-aligned-alloc-awareness=1 -o compare.o compare.s
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-D' 'HAVE_CONFIG_H' '-I' '.' '-I' '..' '-I' '../gnu' '-I' '../' '-I' '../gnu' '-I' '../lib' '-I' '../lib' '-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-c' '-o' 'compare.o' '-mmacosx-version-min=13.0.0'  '-nodefaultexport' '-mtune=core2' '-dumpdir' 'compare.'

### Link

gcc-13   -save-temps -g  --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -v  -liconv -o tar buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o  ../lib/libtar.a ../gnu/libgnu.a
Using built-in specs.
COLLECT_GCC=gcc-13
COLLECT_LTO_WRAPPER=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/lto-wrapper
Target: x86_64-apple-darwin22
Configured with: ../configure --prefix=/usr/local/opt/gcc --libdir=/usr/local/opt/gcc/lib/gcc/current --disable-nls --enable-checking=release --with-gcc-major-version-only --enable-languages=c,c++,objc,obj-c++,fortran --program-suffix=-13 --with-gmp=/usr/local/opt/gmp --with-mpfr=/usr/local/opt/mpfr --with-mpc=/usr/local/opt/libmpc --with-isl=/usr/local/opt/isl --with-zstd=/usr/local/opt/zstd --with-pkgversion='Homebrew GCC 13.1.0' --with-bugurl=https://github.com/Homebrew/homebrew-core/issues --with-system-zlib --build=x86_64-apple-darwin22 --with-sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX13.sdk
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 13.1.0 (Homebrew GCC 13.1.0)
COMPILER_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/
LIBRARY_PATH=/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/:/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../../
COLLECT_GCC_OPTIONS='-save-temps' '-g' '--sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk' '-v' '-o' 'tar' '-mmacosx-version-min=13.0.0' '-asm_macosx_version_min=13.0' '-nodefaultexport' '-mtune=core2' '-dumpdir' 'tar.'
 /usr/local/Cellar/gcc/13.1.0/bin/../libexec/gcc/x86_64-apple-darwin22/13/collect2 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/ -dynamic -arch x86_64 -macosx_version_min 13.0.0 -o tar -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13 -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc -L/usr/local/Cellar/gcc/13.1.0/bin/../lib/gcc/current/gcc/x86_64-apple-darwin22/13/../../.. -liconv buffer.o checkpoint.o compare.o create.o delete.o exit.o exclist.o extract.o xheader.o incremen.o list.o map.o misc.o names.o sparse.o suffix.o system.o tar.o transform.o unlink.o update.o utf8.o warning.o xattrs.o ../lib/libtar.a ../gnu/libgnu.a -lemutls_w -lgcc -lSystem -no_compact_unwind -rpath @loader_path -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc/x86_64-apple-darwin22/13 -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current/gcc -rpath /usr/local/Cellar/gcc/13.1.0/lib/gcc/current -idsym
-macosx_version_min has been renamed to -macos_version_min
