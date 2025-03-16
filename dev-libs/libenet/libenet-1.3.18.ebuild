# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit flag-o-matic git-r3

DESCRIPTION="Linux kernel module for Huion and compatible tablets"
HOMEPAGE="https://github.com/lsalzman/enet"

EGIT_REPO_URI="https://github.com/lsalzman/enet.git"

if [[ ${PV} == "9999" ]]; then
	KEYWORDS="~amd64"
else
    EGIT_BRANCH="v${PV}"
	KEYWORDS="amd64"
fi

LICENSE="MIT"
SLOT="0/${PV}"
IUSE=""

src_prepare() {
	default
    eautoreconf
}

