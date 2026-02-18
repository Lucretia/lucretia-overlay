# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="8"

inherit toolchain-funcs

STEINBERG_DIR="/opt/Steinberg"
MY_P="${PN/-/}-${PV}"
UNPACKED_DIRL="${PN//3/_}"
UNPACKED_DIR="${UNPACKED_DIRL^^}"

# einfo "P - $P"
# einfo "UNPACKED_DIR = ${UNPACKED_DIR}"
# einfo "PN - $PN"
# einfo "MY_P - $MY_P"

DESCRIPTION="Steinberg VST3 SDK ${PV}"
HOMEPAGE="https://www.steinberg.net/en/company/developers.html"
SRC_URI="https://www.steinberg.net/vst3sdk?_ga=2.128632652.1183246519.1613430197-968733070.1612267128 -> ${MY_PV}.zip"

RESTRICT="mirror nostrip"

LICENSE="STEINBERG-VST3-EULA GPL"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="-vst2sdk"

DEPEND="app-arch/unzip
	vst2sdk? ( media-libs/vst2sdk ) "
# WORKDIR="${PORTAGE_BUILDDIR}/work/${MY_P}"
S="${WORKDIR}/${UNPACKED_DIR}"

src_unpack() {
	unpack ${A} || die
	# dosym ${MY_P}
}

src_install() {
	cd "${S}"
	dodir "${STEINBERG_DIR}/${MY_P}"

	insinto "${STEINBERG_DIR}/${MY_P}"
	doins -r ./*

	dosym "${STEINBERG_DIR}/${MY_P}" "${STEINBERG_DIR}/vst3sdk"
	dosym "${STEINBERG_DIR}/${MY_P}" "${STEINBERG_DIR}/${UNPACKED_DIR}"
	newenvd "${FILESDIR}/20vst3-sdk" "20vst3-sdk"

	if use vst2sdk; then
		einfo "Installing VST2 files..."
		# cd ${STEINBERG_DIR}/${MY_P}
		# cp -r VST2_SDK/* VST3_SDK
		#insinto "${STEINBERG_DIR}/${MY_P}/VST3_SDK"
		# doins -r ${STEINBERG_DIR}/${MY_P}/VST2_SDK/*
		dosym "../../../VST2_SDK/public.sdk/source/vst2.x" "${STEINBERG_DIR}/${MY_P}/VST3_SDK/public.sdk/source/vst2.x"
		dosym "../../../vst2sdk/pluginterfaces/vst2.x" "${STEINBERG_DIR}/${MY_P}/VST3_SDK/pluginterfaces/vst2.x"
	fi
}

pkg_postinst() {
	echo
	elog "${P} has been installed to ${STEINBERG_DIR}/${MY_P}"
	elog "It is dually licenced under, to re-read these licenses please refer to"
	elog "${STEINBERG_DIR}/${MY_P}/VST3_SDK/doc/VST3_License_Agreement.pdf and ${STEINBERG_DIR}/${MY_P}/VST3_SDK/LICENSE.txt"
	echo
}
