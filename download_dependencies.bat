REM zlib
git clone --depth 1 --single-branch --branch v1.2.11 https://github.com/madler/zlib.git c:/3rdparty/zlib

REM libpng
git clone --depth 1 --single-branch --branch v1.6.36  git://git.code.sf.net/p/libpng/code.git c:/3rdparty/libpng

REM libjpeg
curl -O http://www.ijg.org/files/jpegsr9c.zip
7z x jpegsr9c.zip -oc:\3rdparty\
move c:\3rdparty\jpeg-9c c:\3rdparty\libjpeg

REM libtiff
git clone --depth 1 --single-branch --branch v4.0.10 https://gitlab.com/libtiff/libtiff.git c:/3rdparty/tiff

REM freetype
git clone --depth 1 --single-branch --branch VER-2-9-1 git://git.sv.nongnu.org/freetype/freetype2.git c:/3rdparty/freetype

REM glut
git clone https://github.com/markkilgard/glut.git c:/3rdparty/glut
cd c:\3rdparty\glut
git reset --hard 8cd96cb440f1f2fac3a154227937be39d06efa53
cd %APPVEYOR_BUILD_FOLDER%

REM giflib
git clone --depth 1 --single-branch --branch 5.1.4 https://git.code.sf.net/p/giflib/code.git c:/3rdparty/giflib

REM minizip
git clone --depth 1 --single-branch --branch 1.2 https://github.com/nmoinvaz/minizip.git c:/3rdparty/minizip
cd c:/3rdparty/minizip
git reset --hard 71ef99f6a051c11652502cf31cfef292de2e7736
cd %APPVEYOR_BUILD_FOLDER%

REM curl
git clone https://github.com/curl/curl.git c:/3rdparty/curl
cd c:/3rdparty/curl
git reset --hard cb013830383f1ccc9757aba36bc32df5ec281c02
cd %APPVEYOR_BUILD_FOLDER%
