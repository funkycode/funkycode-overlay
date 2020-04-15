# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils vala

DESCRIPTION="A stylish to-do list with built-in productivity timer."
HOMEPAGE="http://manuel-kehl.de/projects/go-for-it"
SRC_URI="https://github.com/JMoerman/Go-For-It/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	x11-libs/libnotify
	x11-libs/gtk+:3
"
RDEPEND="
	${DEPEND}
"
BDEPEND=""



#src_configure() {
#	 export VALA_EXECUTABLE="$(type -p valac-$(vala_best_api_version))"
#	cmake-utils_src_configure
#}
#
#src_install() {
#	cmake-utils_src_install
#}
#
##src_configure()
##{
##	export VALA_EXECUTABLE="$(type -p valac-$(vala_best_api_version))"
##	cmake-utils_src_configure
##}
##
##src_install()
##{
##	cmake-utils_src_install
#}


src_prepare(){
	# default
	vala_src_prepare
	cmake-utils_src_prepare
}
src_configure() {
	local mycmakeargs=(
		-DVALA_EXECUTABLE="${VALAC}"
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}


#src_prepare() {
#>---sed \
#>--->----e '/RPATH/s:PKG_LIBEXECDIR:PKG_LIBDIR:g' \
#>--->----i CMakeLists.txt || die
#>---vala_src_prepare
#>---gnome2_src_prepare
#>---cmake-utils_src_prepare
#}
#
#src_configure() {
#>---local mycmakeargs=(
#>--->----DVALA_EXECUTABLE="${VALAC}"
#>--->----DENABLE_CCPANEL=OFF
#>--->----DENABLE_PK=OFF
#>--->----DENABLE_UNITY=OFF
#>--->----DENABLE_UNITY_CCPANEL=OFF
#>--->----DCMAKE_INSTALL_SYSCONFDIR="${EPREFIX}"/etc
#>--->----DENABLE_NAUTILUS="$(usex nautilus)"
#>--->----DENABLE_TESTING="$(usex test)"
#>---)
#>---cmake-utils_src_configure
#}






