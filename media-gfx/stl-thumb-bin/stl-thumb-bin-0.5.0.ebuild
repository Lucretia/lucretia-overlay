# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker xdg

DESCRIPTION="A fast lightweight thumbnail generator for STL files"
HOMEPAGE="https://github.com/unlimitedbacon/stl-thumb"
SRC_URI="
	https://github.com/unlimitedbacon/stl-thumb/releases/download/v0.5.0/stl-thumb_${PV}_amd64.deb
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
    app-arch/dpkg
    !media-gfx/stl-thumb
"

S="${WORKDIR}"

src_unpack() {
    cd ${S}

	unpack_deb "${A}"
}

 src_install() {
 	einfo "----------- ${S}"
 	cd "${S}"

    insinto usr/bin
    doins usr/bin/stl-thumb

    insinto usr/include
    doins usr/include/libstl_thumb.h

    insinto usr/lib64
    doins usr/lib/libstl_thumb.so
    doins usr/lib/libstl_thumb.a

    docinto usr/share/doc
    dodoc -r usr/share/doc/stl-thumb

    insinto usr/share/mime/packages
    doins usr/share/mime/packages/stl-thumb-mime.xml

    insinto usr/share/thumbnailers
    doins usr/share/thumbnailers/stl-thumb.thumbnailer
 }


pkg_preinst() {
	xdg_pkg_preinst
}

pkg_postinst() {
	xdg_pkg_postinst
}

pkg_postrm() {
	xdg_pkg_postrm
}


