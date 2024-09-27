# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="terminal audio visualizer"
HOMEPAGE="https://github.com/noriah/catnip"

if [[ ${PV} == 9999 ]]
then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/noriah/${PN}"

	src_unpack() {
		git-r3_src_unpack
		go-module_live_vendor
	}
else
	EGO_SUM=(
	    "github.com/integrii/flaggy v1.4.4"
		"github.com/integrii/flaggy v1.4.4/go.mod"
		"github.com/mattn/go-runewidth v0.0.9"
		"github.com/mattn/go-runewidth v0.0.9/go.mod"
		"github.com/noisetorch/pulseaudio v0.0.0-20220603053345-9303200c3861"
		"github.com/noisetorch/pulseaudio v0.0.0-20220603053345-9303200c3861/go.mod"
		"github.com/nsf/termbox-go v1.1.1"
		"github.com/nsf/termbox-go v1.1.1/go.mod"
		"github.com/pkg/errors v0.9.1"
		"github.com/pkg/errors v0.9.1/go.mod"
		"golang.org/x/exp v0.0.0-20191002040644-a1355ae1e2c3"
		"gonum.org/v1/gonum v0.11.0"
		"gonum.org/v1/gonum v0.11.0/go.mod"
	)

	go-module_set_globals

	SRC_URI="
		https://github.com/noriah/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
		${EGO_SUM_SRC_URI}
	"
	KEYWORDS="~amd64"
fi

LICENSE="MIT Unlicense BSD-2"
SLOT="0"

RDEPEND="
	media-libs/portaudio
	sci-libs/fftw:3.0
"
DEPEND="${RDEPEND}"

src_compile() {
	ego build -tags withfftw -o catnip ./cmd/catnip || die
}

src_install() {
	dobin  catnip
}

