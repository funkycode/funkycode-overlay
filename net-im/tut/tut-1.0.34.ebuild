# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

EGO_PN="github.com/RasmusLindroth/tut"
EGO_SUM=(
	"github.com/RasmusLindroth/go-mastodon v0.0.21"
	"github.com/RasmusLindroth/go-mastodon v0.0.21/go.mod"
	"github.com/adrg/xdg v0.4.0"
	"github.com/adrg/xdg v0.4.0/go.mod"
	"github.com/atotto/clipboard v0.1.4"
	"github.com/atotto/clipboard v0.1.4/go.mod"
	"github.com/aymerick/douceur v0.2.0"
	"github.com/aymerick/douceur v0.2.0/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/gdamore/encoding v1.0.0"
	"github.com/gdamore/encoding v1.0.0/go.mod"
	"github.com/gdamore/tcell/v2 v2.5.3"
	"github.com/gdamore/tcell/v2 v2.5.3/go.mod"
	"github.com/gen2brain/beeep v0.0.0-20220909211152-5a9ec94374f6"
	"github.com/gen2brain/beeep v0.0.0-20220909211152-5a9ec94374f6/go.mod"
	"github.com/go-toast/toast v0.0.0-20190211030409-01e6764cf0a4"
	"github.com/go-toast/toast v0.0.0-20190211030409-01e6764cf0a4/go.mod"
	"github.com/gobwas/glob v0.2.3"
	"github.com/gobwas/glob v0.2.3/go.mod"
	"github.com/godbus/dbus/v5 v5.1.0"
	"github.com/godbus/dbus/v5 v5.1.0/go.mod"
	"github.com/gorilla/css v1.0.0"
	"github.com/gorilla/css v1.0.0/go.mod"
	"github.com/gorilla/websocket v1.5.0"
	"github.com/gorilla/websocket v1.5.0/go.mod"
	"github.com/icza/gox v0.0.0-20221026131554-a08a8cdc726a"
	"github.com/icza/gox v0.0.0-20221026131554-a08a8cdc726a/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.2.0"
	"github.com/lucasb-eyer/go-colorful v1.2.0/go.mod"
	"github.com/mattn/go-runewidth v0.0.13/go.mod"
	"github.com/mattn/go-runewidth v0.0.14"
	"github.com/mattn/go-runewidth v0.0.14/go.mod"
	"github.com/microcosm-cc/bluemonday v1.0.21"
	"github.com/microcosm-cc/bluemonday v1.0.21/go.mod"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d/go.mod"
	"github.com/pelletier/go-toml/v2 v2.0.6"
	"github.com/pelletier/go-toml/v2 v2.0.6/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rivo/tview v0.0.0-20221221172851-9c04916f4eaa"
	"github.com/rivo/tview v0.0.0-20221221172851-9c04916f4eaa/go.mod"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/rivo/uniseg v0.4.3"
	"github.com/rivo/uniseg v0.4.3/go.mod"
	"github.com/rogpeppe/go-internal v1.8.1/go.mod"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.4.0/go.mod"
	"github.com/stretchr/objx v0.5.0/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.7.1/go.mod"
	"github.com/stretchr/testify v1.8.0/go.mod"
	"github.com/stretchr/testify v1.8.1"
	"github.com/stretchr/testify v1.8.1/go.mod"
	"github.com/tadvi/systray v0.0.0-20190226123456-11a2b8fa57af"
	"github.com/tadvi/systray v0.0.0-20190226123456-11a2b8fa57af/go.mod"
	"github.com/tomnomnom/linkheader v0.0.0-20180905144013-02ca5825eb80"
	"github.com/tomnomnom/linkheader v0.0.0-20180905144013-02ca5825eb80/go.mod"
	"golang.org/x/exp v0.0.0-20221230185412-738e83a70c30"
	"golang.org/x/exp v0.0.0-20221230185412-738e83a70c30/go.mod"
	"golang.org/x/net v0.4.0"
	"golang.org/x/net v0.4.0/go.mod"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20211025201205-69cdffdb9359/go.mod"
	"golang.org/x/sys v0.0.0-20220318055525-2edf467146b5/go.mod"
	"golang.org/x/sys v0.0.0-20220319134239-a9b59b0215f8/go.mod"
	"golang.org/x/sys v0.3.0"
	"golang.org/x/sys v0.3.0/go.mod"
	"golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf/go.mod"
	"golang.org/x/term v0.3.0"
	"golang.org/x/term v0.3.0/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.5.0"
	"golang.org/x/text v0.5.0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/ini.v1 v1.67.0"
	"gopkg.in/ini.v1 v1.67.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"mvdan.cc/xurls/v2 v2.4.0"
	"mvdan.cc/xurls/v2 v2.4.0/go.mod"
)


go-module_set_globals

SRC_URI="https://${EGO_PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

DESCRIPTION="Terminal mastodon client"
HOMEPAGE="https://github.com/RasmusLindroth/tut"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


src_compile() {
	ego build -o ${MY_PN} .
}

src_install() {
	dobin tut
}
