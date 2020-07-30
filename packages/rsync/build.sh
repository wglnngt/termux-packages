TERMUX_PKG_HOMEPAGE=https://rsync.samba.org/
TERMUX_PKG_DESCRIPTION="Utility that provides fast incremental file transfer"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=3.2.2
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://rsync.samba.org/ftp/rsync/src/rsync-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=644bd3841779507665211fd7db8359c8a10670c57e305b4aab61b4e40037afa8
TERMUX_PKG_DEPENDS="libiconv, liblz4, libpopt, openssh | dropbear, openssl-tool, zlib, zstd"
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--with-rsyncd-conf=$TERMUX_PREFIX/etc/rsyncd.conf
--with-included-popt=no
--with-included-zlib=no
--disable-debug
--disable-simd
--disable-xattr-support
--disable-xxhash
"
