# Copyright 1999-2025 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="8"

inherit unpacker desktop

DESCRIPTION="MegaSync (Ubuntu) Binary"
HOMEPAGE="https://mega.io/desktop#download"
MAIN_DEB="megasync-xUbuntu_24.10_amd64.deb"
SRC_URI="https://mega.nz/linux/repo/xUbuntu_24.10/amd64/${MAIN_DEB}"

RESTRICT="mirror"

LICENSE="MEGA"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="app-arch/dpkg"
S="${WORKDIR}"

src_unpack() {
	# default
	unpack_deb "${A}" #"${DISTDIR}/${MAIN_DEB}"
}

src_install() {
	einfo "----------- ${S}"
	cd "${S}"

	insinto "/etc/sysctl.d/"
	doins "etc/sysctl.d/99-megasync-inotify-limit.conf"

	# into "/usr/bin"
	dobin "${FILESDIR}/megasync"

	into "/opt/megasync/"

	dobin "${WORKDIR}/usr/bin/megasync"

	dolib.so "opt/megasync/lib/libavcodec.so.59.37.100"
	dosym "libavcodec.so.59.37.100" "/opt/megasync/lib64/libavcodec.so.59"
	dosym "libavcodec.so.59.37.100" "/opt/megasync/lib64/libavcodec.so"

	dolib.so "opt/megasync/lib/libavformat.so.59.27.100"
	dosym "libavformat.so.59.27.100" "/opt/megasync/lib64/libavformat.so"
	dosym "libavformat.so.59.27.100" "/opt/megasync/lib64/libavformat.so.59"

	dolib.so "opt/megasync/lib/libavutil.so.57.28.100"
	dosym "libavutil.so.57.28.100" "/opt/megasync/lib64/libavutil.so"
	dosym "libavutil.so.57.28.100" "/opt/megasync/lib64/libavutil.so.57"

	dolib.so "opt/megasync/lib/libswresample.so.4.7.100"
	dosym "libswresample.so.4.7.100" "/opt/megasync/lib64/libswresample.so"
	dosym "libswresample.so.4.7.100" "/opt/megasync/lib64/libswresample.so.4"

	dolib.so "opt/megasync/lib/libswscale.so.6.7.100"
	dosym "libswscale.so.6.7.100" "/opt/megasync/lib64/libswscale.so"
	dosym "libswscale.so.6.7.100" "/opt/megasync/lib64/libswscale.so.6"

	domenu "usr/share/applications/megasync.desktop"

	doicon -s 16 $(ls usr/share/icons/hicolor/16x16/apps/*)
	doicon -s 32 $(ls usr/share/icons/hicolor/32x32/apps/*)
	doicon -s 48 $(ls usr/share/icons/hicolor/48x48/apps/*)
	doicon -s 128 $(ls usr/share/icons/hicolor/128x128/apps/*)
	doicon -s 256 $(ls usr/share/icons/hicolor/256x256/apps/*)
	doicon -s scalable -c status $(ls usr/share/icons/hicolor/scalable/status/*)

	# dodoc "share/doc/megasync/copyright"

	# dodir "${STEINBERG_DIR}/${MY_P}"
	# # einfo "${STEINBERG_DIR}/${MY_P}"

	# insinto "${STEINBERG_DIR}/${MY_P}"
	# doins -r ./*

	# insinto "/opt/"
	# dosym "${STEINBERG_DIR}/${MY_P}" "${STEINBERG_DIR}/asiosdk"

	# newenvd "${FILESDIR}/20asio-sdk" "20asio-sdk"
}
