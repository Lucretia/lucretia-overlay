# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..14} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

# MY_COMMIT="05ddccb05ddccb206ffd02e0efc1efa9931df2f8e76b864"

DESCRIPTION="An abstract language model of VHDL written in Python."
HOMEPAGE="https://github.com/VHDL/pyVHDLModel"
SRC_URI="https://github.com/VHDL/pyVHDLModel/archive/v${PV}.tar.gz -> ${P}.tar.gz"

S=${WORKDIR}/pyVHDLModel-${PV}/
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

RDEPEND="sci-electronics/ghdl
         dev-python/pytooling"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
