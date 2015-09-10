# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

USE_RUBY="ruby20 ruby21"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.md README.md"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

inherit ruby-fakegem

SRC_URI="https://github.com/guard/listen/archive/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="Listens to file modifications and notifies you about the changes"
HOMEPAGE="https://github.com/guard/listen"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

# Block on other packages trying to install a /usr/bin/listen
RDEPEND+="!!media-sound/listen !!media-radio/ax25"

ruby_add_rdepend ">=dev-ruby/rb-inotify-0.9.0"
ruby_add_bdepend "test? ( dev-ruby/celluloid-io )"

all_ruby_prepare() {
	sed -i -e "/git/,+3d" -e "/rb-fsevent/d" -e "/bundler/d" ${PN}.gemspec || die
	rm -rf spec/lib/listen/adapter/darwin_spec.rb || die
}