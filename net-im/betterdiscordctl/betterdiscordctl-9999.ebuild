# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
inherit eutils git-r3

DESCRIPTION="A manager for BetterDiscord on Linux."
HOMEPAGE="https://github.com/bb010g/betterdiscordctl"
EGIT_REPO_URI="https://github.com/bb010g/betterdiscordctl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND="net-im/discord-bin"

src_install() {
	insinto /usr/bin
	insopts -m 755 -o root -g root
	newins "${WORKDIR}/${PF}/betterdiscordctl" betterdiscordctl
}

pkg_postinst() {
	elog "INSTALLING BETTERDISCORD:"
	elog "Run 'betterdiscordctl' install as your user and it should work if you didn't modify net-im/discord-bin."
	elog "If discord is not found, point it to the correct path with the '--scan' flag."
	elog "You must have ran discord at least once for the needed directories to be generated."
}
