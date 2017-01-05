# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils user

MY_PN="craftware"
MY_PV="1.14"
MY_P="${MY_PN}_${MY_PV}"


DESCRIPTION="CraftWare is the slicer program to generate gcode files for 3d printers"
HOMEPAGE="https://craftunique.com/craftware"
SRC_URI="https://craftware.craftunique.com/download/linux/${MY_P}-32757.deb"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
S="${WORKDIR}"


DEPEND=""
RDEPEND="${DEPEND}"



src_prepare() {
	mkdir data
	tar -xf data.tar.xz -C data || die "unpack fail"
}

src_install() {
	tar -xf data.tar.xz -C ${D} || die "main package extract fail"

}

