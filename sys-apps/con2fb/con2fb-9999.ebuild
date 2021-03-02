# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
inherit eutils git-r3

DESCRIPTION="Utility for mapping linux consoles to framebuffer devices"
HOMEPAGE="https://github.com/iosevka-soz/con2fb"
EGIT_REPO_URI="https://github.com/iosevka-soz/con2fb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

src_install() {
	insinto /usr/bin
	insopts -m 755 -o root -g root
	newins "${WORKDIR}/${PF}/con2fb" con2fb
}
