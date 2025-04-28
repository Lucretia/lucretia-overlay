# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_P="stl-thumb-kde-${PV}"

KDE_ORG_NAME="stl-thumb-kde"
KFMIN=6.9.0
QTMIN=6.7.2
inherit ecm gear.kde.org

DESCRIPTION="KIO thumbnail generator for STL files"
HOMEPAGE="https://github.com/unlimitedbacon/stl-thumb-kde"

SRC_URI="https://github.com/unlimitedbacon/stl-thumb-kde/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="MIT"
SLOT="6"
KEYWORDS="~amd64 ~arm64 ~loong ~ppc64 ~riscv ~x86"

DEPEND="
	>=dev-qt/qtbase-${QTMIN}:6[gui]
	>=kde-frameworks/kio-${KFMIN}:6
"
RDEPEND="${DEPEND}
	!<kde-apps/thumbnailers-24.05.2-r1:6
	|| ( media-gfx/stl-thumb-bin media-gfx/stl-thumb )
"

# S="${WORKDIR}"

# src_configure() {
# 	local mycmakeargs=(
# 		-DDISABLE_BLENDER=ON
# 		-DDISABLE_MOBIPOCKET=ON
# 		-DCMAKE_DISABLE_FIND_PACKAGE_QMobipocket6=ON
# 		-DCMAKE_DISABLE_FIND_PACKAGE_KExiv2Qt6=ON
# 		-DCMAKE_DISABLE_FIND_PACKAGE_KDcrawQt6=ON
# 	)
# 	ecm_src_configure
# }
