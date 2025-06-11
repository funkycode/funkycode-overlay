EAPI=8

inherit unpacker xdg


MY_P="ZMK.Studio"

DESCRIPTION="ZMK Studio - A cross-platform GUI for ZMK"
HOMEPAGE="https://zmk.studio/"
# https://github.com/zmkfirmware/zmk-studio/releases/download/v0.3.1/ZMK.Studio_0.3.1_amd64.deb
SRC_URI="https://github.com/zmkfirmware/zmk-studio/releases/download/v${PV}/${MY_P}_${PV}_amd64.deb"
S="${WORKDIR}"

KEYWORDS="~amd64"
# S="${WORKDIR}"
LICENSE="Apache-2.0"
SLOT="0"


src_unpack(){
	unpack_deb ${A}
}

src_install(){
	cp -R "${S}"/* "${D}" || die "Installing binary files failed"
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}


