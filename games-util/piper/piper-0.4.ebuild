# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit python-r1 meson

DESCRIPTION="A GTK front-end to ratbagd"
HOMEPAGE="https://github.com/libratbag/piper"
SRC_URI="https://github.com/libratbag/piper/archive/${PV}.tar.gz -> ${PF}.tar.gz"
LICENSE="GPL-2"

KEYWORDS="amd64 arm64 ~ppc64 x86"

SLOT="0"

DEPEND="
	>=dev-util/meson-0.40.0
"

RDEPEND="
	dev-python/python-evdev
	>=x11-libs/gtk+-3.22
	dev-python/pygobject:3
"

src_prepare() {
	default
	python_setup
}
