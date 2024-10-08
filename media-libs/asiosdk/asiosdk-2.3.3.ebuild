# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="7"

inherit toolchain-funcs

STEINBERG_DIR="/opt/Steinberg"
MY_DATE="2019-06-14"
MY_P="${PN}_${PV}_${MY_DATE}"

# einfo "P - $P"
# einfo "PN - $PN"
# einfo "MY_DATE - $MY_DATE"
# einfo "MY_P - $MY_P"

DESCRIPTION="Steinberg ASIO SDK 2.3.3 ${MY_DATE}"
HOMEPAGE="https://www.steinberg.net/en/company/developers.html"
SRC_URI="https://www.steinberg.net/asiosdk?_ga=2.133926862.1183246519.1613430197-968733070.1612267128 -> ${MY_P}.zip"

RESTRICT="mirror nostrip"

LICENSE="STEINBERG-ASIO-EULA"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="app-arch/unzip"
S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack ${A} || die
}

src_install() {
	cd "${S}"
	dodir "${STEINBERG_DIR}/${MY_P}"
	# einfo "${STEINBERG_DIR}/${MY_P}"

	insinto "${STEINBERG_DIR}/${MY_P}"
	doins -r ./*

	insinto "/opt/"
	dosym "${STEINBERG_DIR}/${MY_P}" "${STEINBERG_DIR}/asiosdk"

	newenvd "${FILESDIR}/20asio-sdk" "20asio-sdk"
}

pkg_postinst() {
	echo
	elog "${P} has been installed to ${STEINBERG_DIR}/${MY_P}"
	elog "To re-read the license please refer to"
	elog "${STEINBERG_DIR}/${MY_P}/Steinberg ASIO Licensing Agreement.pdf"
	echo
}
