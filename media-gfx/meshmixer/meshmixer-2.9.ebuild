# Distributed under the term of the GNU General Public License v3

EAPI="5"
PYTHON_COMPAT=( python3_4 )
inherit eutils user

MY_PN="meshmixer"
MY_PV="2.9"
MY_P="${MY_PN}_${MY_PV}"

DESCRIPTION="This is the new, shiny frontend for Cura."
HOMEPAGE="https://ultimaker.com/en/products/cura-software"
SRC_URI="https://s3.amazonaws.com/autodesk-meshmixer/meshmixer/amd64/${MY_P}_amd64.deb"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}"
DEPEND="
    dev-qt/qtwebkit
    dev-qt/qtxml
    dev-qt/qtscript
    dev-qt/qtcore
    dev-qt/qtnetwork
    dev-qt/qtopengl
    dev-qt/qtgui
    media-libs/mesa
    media-libs/glu
    sci-mathematics/cgal
    sci-libs/lapack-reference
    dev-libs/xerces-c
    sys-libs/zlib
    sci-libs/superlu
    sci-libs/blas-reference
    net-dns/avahi[dbus,autoipd,howl-compat,mdnsresponder-compat]
    sys-devel/gcc[fortran]
"
RDEPEND="
    ${DEPEND}
"
src_prepare() {
    mkdir data
    tar -xf data.tar.xz -C data || die "unpack fail"
}

src_install() {
    tar -xf data.tar.xz -C ${D} || die "main package extract fail"

}
