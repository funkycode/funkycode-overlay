# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="A rich terminal UI for GitHub that doesn't break your flow"
HOMEPAGE="https://github.com/dlvhdr/gh-dash"
SRC_URI="https://github.com/dlvhdr/gh-dash/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE=""

RDEPEND="
	dev-vcs/git
	dev-util/github-cli
"

BDEPEND="
	>=dev-lang/go-1.21
"

# Note: Go dependencies should be populated using `go mod vendor` or similar
# For now, Go will download them during build
src_compile() {
	go build -v -work -x -ldflags "-s -w" -o gh-dash ./cmd/gh-dash || die
}

src_install() {
	dobin gh-dash
	einstalldocs
}
