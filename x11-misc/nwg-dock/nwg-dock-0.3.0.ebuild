# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="GTK3-based dock for sway Wayland compositor"
HOMEPAGE="https://github.com/nwg-piotr/nwg-dock"

EGO_SUM=(
    "github.com/allan-simon/go-singleinstance v0.0.0-20210120080615-d0997106ab37"
    "github.com/allan-simon/go-singleinstance v0.0.0-20210120080615-d0997106ab37/go.mod"
    "github.com/davecgh/go-spew v1.1.0/go.mod"
    "github.com/davecgh/go-spew v1.1.1"
    "github.com/davecgh/go-spew v1.1.1/go.mod"
    "github.com/dlasky/gotk3-layershell v0.0.0-20210827021656-e6ecab2731f7"
    "github.com/dlasky/gotk3-layershell v0.0.0-20210827021656-e6ecab2731f7/go.mod"
    "github.com/gotk3/gotk3 v0.6.1"
    "github.com/gotk3/gotk3 v0.6.1/go.mod"
    "github.com/joshuarubin/go-sway v0.0.4"
    "github.com/joshuarubin/go-sway v0.0.4/go.mod"
    "github.com/joshuarubin/lifecycle v1.0.0"
    "github.com/joshuarubin/lifecycle v1.0.0/go.mod"
    "github.com/pmezard/go-difflib v1.0.0"
    "github.com/pmezard/go-difflib v1.0.0/go.mod"
    "github.com/sirupsen/logrus v1.8.1"
    "github.com/sirupsen/logrus v1.8.1/go.mod"
    "github.com/stretchr/objx v0.1.0/go.mod"
    "github.com/stretchr/testify v1.2.2/go.mod"
    "github.com/stretchr/testify v1.3.0"
    "github.com/stretchr/testify v1.3.0/go.mod"
    "go.uber.org/atomic v1.3.2"
    "go.uber.org/atomic v1.3.2/go.mod"
    "go.uber.org/multierr v1.1.0"
    "go.uber.org/multierr v1.1.0/go.mod"
    "golang.org/x/sync v0.0.0-20190412183630-56d357773e84"
    "golang.org/x/sync v0.0.0-20190412183630-56d357773e84/go.mod"
    "golang.org/x/sys v0.0.0-20191026070338-33540a1f6037"
    "golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
)
go-module_set_globals
SRC_URI="https://github.com/nwg-piotr/nwg-dock/archive/v${PV}.tar.gz -> ${P}.tar.gz
    ${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=gui-libs/gtk-layer-shell-0.6.0
    x11-libs/gtk+:3"
RDEPEND="${DEPEND}"

src_compile() {
#	emake bindata.go || die
	golang-single_src_compile
}


src_install() {
    dobin bin/nwg-dock

    insinto /usr/share/nwg-dock
    doins -r config/.
    doins -r images
}
