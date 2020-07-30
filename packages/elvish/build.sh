TERMUX_PKG_HOMEPAGE=https://github.com/elves/elvish
TERMUX_PKG_DESCRIPTION="A friendly and expressive Unix shell"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_VERSION=0.14.0
TERMUX_PKG_SRCURL=https://github.com/elves/elvish/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=36ed5e0318d75f7e7d616398e42477cfbd6fd2a1d1f108dee7941621cfb7378a

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/elves
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/elves/elvish

	cd "$GOPATH"/src/github.com/elves/elvish
	go build
}

termux_step_make_install() {
	install -Dm700 \
		"$GOPATH"/src/github.com/elves/elvish/elvish \
		"$TERMUX_PREFIX"/bin/elvish
}
