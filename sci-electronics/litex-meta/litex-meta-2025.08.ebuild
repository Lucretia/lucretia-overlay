# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Build your hardware, easily!"
HOMEPAGE="https://github.com/enjoy-digital/litex"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

LITEX="dram eth iclink litehyperbus pcie sata scope sdcard"
for component in ${LITEX}; do
    IUSE_LITEX_COMPONENTS+=" litex_${component}"
done
IUSE="${IUSE_LITEX_COMPONENTS}"

RDEPEND="sci-electronics/litex
    sci-electronics/litex-boards
	sci-electronics/migen
    litex_dram? ( sci-electronics/litedram )
    litex_eth? ( sci-electronics/liteeth )
    litex_iclink? ( sci-electronics/liteiclink )
    litex_litehyperbus? ( sci-electronics/litehyperbus )
	litex_pcie? ( sci-electronics/litepcie )
	litex_sata? ( sci-electronics/litesata )
	litex_scope? ( sci-electronics/litescope )
    litex_sdcard? ( sci-electronics/litesdcard )
"
