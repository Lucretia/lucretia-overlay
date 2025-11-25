# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Build your hardware, easily!"
HOMEPAGE="https://github.com/enjoy-digital/litex"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

IUSE="dram eth iclink pcie sata scope sdcard"

RDEPEND="sci-electronics/litex
	sci-electronics/migen
    dram? ( sci-electronics/litedram )
    eth? ( sci-electronics/liteeth )
    iclink? ( sci-electronics/liteiclink )
	pcie? ( sci-electronics/litepcie )
	sata? ( sci-electronics/litesata )
	scope? ( sci-electronics/litescope )
    sdcard? ( sci-electronics/litesdcard )
"
