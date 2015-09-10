# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

USE_RUBY="ruby20 ruby21 ruby22"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

inherit ruby-fakegem

SRC_URI="https://github.com/reset/varia_model/archive/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="A mixin to provide objects with magic attribute reading and writing"
HOMEPAGE="https://github.com/reset/varia_model"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
	>=dev-ruby/buff-extensions-1.0
	>=dev-ruby/hashie-2.0.2:0
"