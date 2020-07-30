TERMUX_PKG_HOMEPAGE=http://www.ece.uvic.ca/~frodo/jasper/
TERMUX_PKG_DESCRIPTION="Library for manipulating JPEG-2000 files"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_VERSION=2.0.17
TERMUX_PKG_SRCURL=https://github.com/mdadams/jasper/archive/version-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=9a3524aa17795ea10f476d7071e27dd9fc0077d9ffbf2ea49b9f18de0bfe7fa1
TERMUX_PKG_DEPENDS="libjpeg-turbo"
TERMUX_PKG_BREAKS="libjasper-dev"
TERMUX_PKG_REPLACES="libjasper-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-H$TERMUX_PKG_SRCDIR
-B$TERMUX_PKG_BUILDDIR
-DCMAKE_INSTALL_LIBDIR=$TERMUX_PREFIX/lib
"
