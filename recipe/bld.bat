setlocal EnableDelayedExpansion

mkdir build
cd build

cmake -G "NMake Makefiles" ^
      -DBUILD_ASL=ON ^
      -DCMAKE_INSTALL_PREFIX:PATH="%PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%PREFIX%" ^
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON ^
      -DBUILD_SHARED_LIBS=ON ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      ..
if errorlevel 1 exit 1

nmake VERBOSE=1
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
