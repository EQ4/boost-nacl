#!/bin/sh
ROOT=${NACL_TOOLCHAIN_ROOT:-$HOME/root/nacl-sdk}

./bootstrap.sh
LIBS="--with-thread --with-iostreams --with-regex --with-serialization --with-system"
PATH=$ROOT/bin:$PATH ./bjam --prefix=$ROOT/nacl64/ link=static ${LIBS}
PATH=$ROOT/bin:$PATH ./bjam install --prefix=$ROOT/nacl64/ link=static ${LIBS}

