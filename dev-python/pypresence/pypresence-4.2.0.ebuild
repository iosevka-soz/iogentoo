# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )

inherit distutils-r1

DESCRIPTION="Discord Rich Presence Integration"
HOMEPAGE="https://github.com/qwertquerty/pypresence/"
SRC_URI="https://files.pythonhosted.org/packages/e2/d1/8d0fb2f2ceda70e3a5cb199ca019cb592c957976e1944c62d43335e1f29c/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

distutils_enable_tests setup.py
