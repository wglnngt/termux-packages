TERMUX_PKG_HOMEPAGE=https://www.gnupg.org/related_software/gpgme/
TERMUX_PKG_DESCRIPTION="Library designed to make access to GnuPG easier"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_VERSION=1.14.0
TERMUX_PKG_SRCURL=ftp://ftp.gnupg.org/gcrypt/gpgme/gpgme-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=cef1f710a6b0d28f5b44242713ad373702d1466dcbe512eb4e754d7f35cd4307
TERMUX_PKG_DEPENDS="gnupg (>= 2.2.9-1), libassuan, libgpg-error"
TERMUX_PKG_BREAKS="gpgme-dev"
TERMUX_PKG_REPLACES="gpgme-dev"
# Use "--disable-gpg-test" to avoid "No rule to make target `../../src/libgpgme-pthread.la":
# Use "--enable-languages=no" to only build the C library.
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-gpg-test
--enable-languages=no
--with-gpg=$TERMUX_PREFIX/bin/gpg2
--without-g13
--without-gpgconf
--without-gpgsm
"
