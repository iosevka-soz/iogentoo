# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

GOLANG_PKG_IMPORTPATH="github.com/Bios-Marcel"
GOLANG_PKG_ARCHIVEPREFIX="refs/tags/"
GOLANG_PKG_VERSION="2020-11-22"

GOLANG_PKG_DEPENDENCIES=(
	"github.com/Bios-Marcel/discordemojimap:8c80533"
	"github.com/Bios-Marcel/discordgo:eb35145"
	"github.com/Bios-Marcel/shortnotforlong:884ac57"
	"github.com/alecthomas/chroma:809ff9b"
	"github.com/atotto/clipboard:579379f"
	"github.com/gdamore/tcell:260932a"
	"github.com/google/go-github:2e3e74f"
	"github.com/lucasb-eyer/go-colorful:fadcb7c"
	"github.com/mattn/go-runewidth:14e809f"
	"github.com/mdp/qrterminal:11fc737"
	"github.com/pkg/errors:614d223"
	"github.com/rivo/uniseg:f8f8f75"
	"github.com/sergi/go-diff:58c5cb1"
	"github.com/danwakefield/fnmatch:cbb64ac3"
	"github.com/dlclark/regexp2:92c702a"
	"github.com/gdamore/encoding:6289cdc"
	"github.com/godbus/dbus:37bf87e"
	"github.com/google/go-querystring:44c6ddd"
	"github.com/gorilla/websocket:b65e629"

	"golang.org/x/crypto:9e8e0b39"
	"golang.org/x/sys:669c56c3"
	"golang.org/x/text:f21a4df"

	"gopkg.in/go-sourcemap/sourcemap.v1:6e83ace"

	"rsc.io/qr:ca9a01f"

	"github.com/Bios-Marcel/goclipimg:d0f7b06"
	"github.com/gen2brain/beeep:e9c15c2"
	"github.com/robertkrimen/otto:ef014fd0"
	"github.com/skratchdot/open-golang:eef84239"
)

inherit git-r3 golang-single

DESCRIPTION="TUI Discord custom client written in GO"
HOMEPAGE="https://github.com/Bios-Marcel/cordless"
EGIT_REPO_URI="${HOMEPAGE}"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
BDEPEND=">=dev-lang/go-1.13"
RDEPEND="${BDEPEND}"
DEPEND="${RDEPEND}"

src_install() {
	golang-single_src_install
}
