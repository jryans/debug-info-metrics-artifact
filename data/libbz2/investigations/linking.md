## WLLVM default (fails)

```
$ WLLVM_OUTPUT_LEVEL=DEBUG wllvm -fpic -fPIC -Wall -Winline -D_FILE_OFFSET_BITS=64 --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone  -o bzip2-shared bzip2.c libbz2.so.1.0.8
INFO::compilers.wcompile() at compilers.py:41 ::Entering CC [-fpic -fPIC -Wall -Winline -D_FILE_OFFSET_BITS=64 --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -o bzip2-shared bzip2.c libbz2.so.1.0.8]
DEBUG::compilers.getBuilder() at compilers.py:281 ::WLLVM compiler using clang
DEBUG::compilers.getBuilder() at compilers.py:283 ::WLLVM compiler path prefix "/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin"
DEBUG::compilers.buildObject() at compilers.py:302 ::buildObject rc = 0
DEBUG::compilers.buildAndAttachBitcode() at compilers.py:333 ::Not compile only case: bzip2.c
DEBUG::compilers.buildObjectFile() at compilers.py:387 ::buildObjectFile: ['/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang', '-fpic', '-fPIC', '-Wall', '-Winline', '-D_FILE_OFFSET_BITS=64', '--sysroot', '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk', '-g', '-fno-inline', '-fno-discard-value-names', '-Xclang', '-disable-O0-optnone', 'bzip2.c', '-c', '-o', '.bzip2.o']
DEBUG::compilers.buildAndAttachBitcode() at compilers.py:343 ::building and attaching .bzip2.o.bc to .bzip2.o
DEBUG::compilers.buildBitcodeFile() at compilers.py:374 ::buildBitcodeFile: ['/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang', '-emit-llvm', '-fpic', '-fPIC', '-Wall', '-Winline', '-D_FILE_OFFSET_BITS=64', '--sysroot', '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk', '-g', '-fno-inline', '-fno-discard-value-names', '-Xclang', '-disable-O0-optnone', '-c', 'bzip2.c', '-o', '.bzip2.o.bc']
DEBUG::compilers.attachBitcodePathToObject() at compilers.py:122 ::attachBitcodePathToObject: .bzip2.o.bc  ===> .bzip2.o [ext = .o]
DEBUG::compilers.attachBitcodePathToObject() at compilers.py:142 ::Wrote "/Users/jryans/Projects/bzip2/.bzip2.o.bc" to file "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/tmp37k3ipde"
ld: library 'System' not found
clang-15: error: linker command failed with exit code 1 (use -v to see invocation)
WARNING::compilers.linkFiles() at compilers.py:364 ::Failed to link "['/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang', '.bzip2.o', 'libbz2.so.1.0.8', '-o', 'bzip2-shared']"
```

## WLLVM with -v (succeeds with warning)

```
$ WLLVM_OUTPUT_LEVEL=DEBUG wllvm -fpic -fPIC -Wall -Winline -D_FILE_OFFSET_BITS=64 --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone  -o bzip2-shared bzip2.c libbz2.so.1.0.8 -v
INFO::compilers.wcompile() at compilers.py:41 ::Entering CC [-fpic -fPIC -Wall -Winline -D_FILE_OFFSET_BITS=64 --sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -o bzip2-shared bzip2.c libbz2.so.1.0.8 -v]
DEBUG::compilers.getBuilder() at compilers.py:281 ::WLLVM compiler using clang
DEBUG::compilers.getBuilder() at compilers.py:283 ::WLLVM compiler path prefix "/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin"
clang version 15.0.0 (git@github.com:llvm/llvm-project.git 4ba6a9c9f65bbc8bd06e3652cb20fd4dfc846137)
Target: x86_64-apple-darwin22.6.0
Thread model: posix
InstalledDir: /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin
 "/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang-15" -cc1 -triple x86_64-apple-macosx13.0.0 -Wundef-prefix=TARGET_OS_ -Werror=undef-prefix -Wdeprecated-objc-isa-usage -Werror=deprecated-objc-isa-usage -emit-obj -mrelax-all --mrelax-relocations -disable-free -clear-ast-before-backend -main-file-name bzip2.c -mrelocation-model pic -pic-level 2 -mframe-pointer=all -ffp-contract=on -fno-rounding-math -funwind-tables=2 -fcompatibility-qualified-id-block-type-checking -fvisibility-inlines-hidden-static-local-var -target-cpu penryn -tune-cpu generic -mllvm -treat-scalable-fixed-error-as-warning -debug-info-kind=standalone -dwarf-version=4 -debugger-tuning=lldb -target-linker-version 857.1 -v -fcoverage-compilation-dir=/Users/jryans/Projects/bzip2 -resource-dir /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0 -D _FILE_OFFSET_BITS=64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -internal-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include -internal-isystem /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/include -internal-externc-isystem /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -Wall -Winline -fdebug-compilation-dir=/Users/jryans/Projects/bzip2 -ferror-limit 19 -stack-protector 1 -fblocks -fencode-extended-block-signature -fregister-global-dtors-with-atexit -fgnuc-version=4.2.1 -fno-inline -fmax-type-align=16 -fcolor-diagnostics -disable-O0-optnone -D__GCC_HAVE_DWARF2_CFI_ASM=1 -o /var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/bzip2-d648b5.o -x c bzip2.c
clang -cc1 version 15.0.0 based upon LLVM 15.0.0 default target x86_64-apple-darwin22.6.0
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/local/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/Library/Frameworks"
#include "..." search starts here:
#include <...> search starts here:
 /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks (framework directory)
End of search list.
 "/usr/bin/ld" -demangle -lto_library /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/libLTO.dylib -no_deduplicate -dynamic -arch x86_64 -platform_version macos 13.0.0 13.0.0 -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o bzip2-shared /var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/bzip2-d648b5.o libbz2.so.1.0.8 -lSystem /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/lib/clang/15.0.0/lib/darwin/libclang_rt.osx.a
 "/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/dsymutil" -o bzip2-shared.dSYM bzip2-shared
DEBUG::compilers.buildObject() at compilers.py:302 ::buildObject rc = 0
DEBUG::compilers.buildAndAttachBitcode() at compilers.py:315 ::Compile only case: bzip2.c
DEBUG::compilers.buildBitcodeFile() at compilers.py:374 ::buildBitcodeFile: ['/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-15.0.0/bin/clang', '-emit-llvm', '-fpic', '-fPIC', '-Wall', '-Winline', '-D_FILE_OFFSET_BITS=64', '--sysroot', '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk', '-g', '-fno-inline', '-fno-discard-value-names', '-Xclang', '-disable-O0-optnone', '-c', 'bzip2.c', '-o', '.bzip2-shared.bc']
DEBUG::compilers.attachBitcodePathToObject() at compilers.py:122 ::attachBitcodePathToObject: .bzip2-shared.bc  ===> bzip2-shared [ext = ]
WARNING::compilers.attachBitcodePathToObject() at compilers.py:128 ::Cannot
attach bitcode path to "bzip2-shared of type MACH_EXECUTABLE"
```
