#!/bin/sh
for mod in compiler-rt libcxxrt libdwarf-bsd libunwind stdcxx; do
	git submodule add git://github.com/pathscale/${mod}.git compiler/${mod}
done

for mod in compiler assembler; do
	git submodule add git://github.com/path64/${mod}.git compiler/${mod}
done

git submodule add git://github.com/path64/debugger.git compiler/pathdb
