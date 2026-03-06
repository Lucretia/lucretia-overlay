# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop xdg unpacker

DESCRIPTION="Free and Open Source Synth - Surge XT"
HOMEPAGE="https://surge-synthesizer.github.io/"
SRC_URI="https://github.com/surge-synthesizer/releases-xt/releases/download/${PV}/surge-xt-linux-x86_64-${PV}.tar.gz"

S="${WORKDIR}"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="clap doc lv2 vst"

RESTRICT="strip"

DEPEND="
    x11-misc/xdg-user-dirs
"

#RDEPEND="
#"

QA_PREBUILT="/usr/*"

S="${WORKDIR}"

src_install() {
 	# einfo "----------- ${S}"
 	cd "${S}"

    insinto usr/bin
    doins bin/*
 	fperms +x "/usr/bin/Surge XT"
 	fperms +x "/usr/bin/Surge XT Effects"
 	fperms +x /usr/bin/surge-xt-cli

    if use clap; then
        insinto usr/lib64/clap
        doins lib/clap/*

     	fperms +x "/usr/lib64/clap/Surge XT Effects.clap"
     	fperms +x "/usr/lib64/clap/Surge XT.clap"
    fi

    if use lv2; then
        insinto usr/lib64/lv2
        doins -r lib/lv2/*
    fi

    if use vst; then
        insinto usr/lib64/vst3
        doins -r lib/vst3/*
    fi

    insinto usr/share/applications
    doins share/applications/*

    insinto usr/share/icons
    doins -r share/icons/*

    insinto usr/share/surge-xt
    doins -r share/surge-xt/[f-w]*

    if use doc; then
        dodoc share/surge-xt/doc/*
    fi
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

