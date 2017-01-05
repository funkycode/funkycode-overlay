# Distributed under the term of the GNU General Public License v3

EAPI="5"
PYTHON_COMPAT=( python3_4 )
inherit eutils user

MY_PN="Cura"
MY_PV="2.3.0"
MY_P="${MY_PN}-${MY_PV}"

DESCRIPTION="This is the new, shiny frontend for Cura."
HOMEPAGE="https://ultimaker.com/en/products/cura-software"
SRC_URI="http://software.ultimaker.com/Cura_open_beta/${MY_P}-BETA-Linux.deb"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
S="${WORKDIR}"
 
REQUIRED_USE="${PYTHON_REQUIRED_USE}"
DEPEND="dev-qt/linguist-tools:5"
RDEPEND="
	${PYTHON_DEPS}
	dev-qt/qtwidgets:5
	dev-qt/qtgui[egl,gles2]
	dev-python/PyQt5[serialport,opengl]
	dev-python/numpy
	dev-python/pyserial
	sys-devel/gcc[fortran]
"
src_prepare() {
	mkdir data
	tar -xzf data.tar.gz -C data || die "unpack fail"
}

src_install() {
	tar -xzf data.tar.gz -C ${D} || die "main package extract fail"

}



