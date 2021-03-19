# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

MY_PN="Bitwarden"
DESCRIPTION="Bitwarden password manager desktop client"
HOMEPAGE="https://bitwarden.com/"
SRC_URI="https://github.com/bitwarden/desktop/releases/download/v${PV}/Bitwarden-${PV}-amd64.deb"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	app-accessibility/at-spi2-atk:2
	app-accessibility/at-spi2-core:2
	app-crypt/libsecret
	dev-libs/atk
	dev-libs/expat
	dev-libs/glib
	dev-libs/nspr
	dev-libs/nss
	media-libs/alsa-lib
	net-print/cups
	sys-apps/dbus
	sys-apps/util-linux
	x11-libs/cairo
	x11-libs/gdk-pixbuf:2
	x11-libs/gtk+:3
	x11-libs/libX11
	x11-libs/libxcb
	x11-libs/libXcomposite
	x11-libs/libXcursor
	x11-libs/libXdamage
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXi
	x11-libs/libXrandr
	x11-libs/libXrender
	x11-libs/libXScrnSaver
	x11-libs/libXtst
	x11-libs/pango
"

S="${WORKDIR}"

QA_PREBUILT="
	opt/Bitwarden/*.so
	opt/Bitwarden/bitwarden
	opt/Bitwarden/chrome-sandbox
"

src_install() {
	insinto /opt
	doins -r opt/${MY_PN}
	fperms 755 /opt/Bitwarden/bitwarden
	fperms 4755 /opt/Bitwarden/chrome-sandbox
	dosym /opt/${MY_PN}/bitwarden /usr/bin/bitwarden

	insinto /usr/share/icons
	doins -r usr/share/icons/hicolor

}
