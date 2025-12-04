# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for installing FPGA related packages."
HOMEPAGE=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

FPGA_HDL="vhdl"
for hdl in ${FPGA_HDL}; do
    IUSE_FPGA_HDL+=" fpga_hdl_${hdl}"
done
IUSE="${IUSE_FPGA_HDL} python"

DEPEND="sci-electronics/litex-meta
    fpga_hdl_vhdl? (
        sci-electronics/ghdl-yosys-plugin
        sci-electronics/ghdl

        python? ( dev-python/pyghdl )
        )
"
