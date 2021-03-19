# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Zsh tab completion with fzf"
HOMEPAGE="https://github.com/Aloxaf/fzf-tab"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ZSH_PLUGIN_DIR="/usr/share/zsh/plugins/fzf-tab"

RDEPEND="
	app-shells/zsh
	app-shells/fzf"

S="${WORKDIR}/${PF}"

src_install() {
	dodir "${ZSH_PLUGIN_DIR}"
	insinto "${ZSH_PLUGIN_DIR}"
	insopts -m 755 -o root -g root
	doins -r "${S}/fzf-tab.zsh" "${S}/fzf-tab.plugin.zsh" "${S}/lib"
}

pkg_postinst() {
	einfo "You need to source the plugin in your zshrc, add: "
	einfo "/usr/ahre/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh"
	einfo "to your zshrc after compinit."
}
