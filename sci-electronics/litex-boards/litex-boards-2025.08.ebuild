# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

MY_COMMIT="a4f7575ed60f079550e1bf02aafbcdeddb3b5969"

DESCRIPTION="LiteX boards files"
HOMEPAGE="https://github.com/litex-hub/litex-boards"
SRC_URI="https://github.com/litex-hub/litex-boards/archive/${PV}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/${P}
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="dev-python/pyserial"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
    sci-electronics/migen"
