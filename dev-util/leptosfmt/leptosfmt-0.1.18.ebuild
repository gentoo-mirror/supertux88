# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	anstream@0.3.2
	anstyle@1.0.0
	anstyle-parse@0.2.0
	anstyle-query@1.0.0
	anstyle-wincon@1.0.1
	anyhow@1.0.71
	autocfg@1.1.0
	bitflags@1.3.2
	cc@1.0.79
	cfg-if@1.0.0
	clap@4.3.3
	clap_builder@4.3.3
	clap_derive@4.3.2
	clap_lex@0.5.0
	colorchoice@1.0.0
	console@0.15.7
	crop@0.3.0
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.14
	crossbeam-utils@0.8.15
	either@1.8.1
	encode_unicode@0.3.6
	errno@0.3.1
	errno-dragonfly@0.1.2
	glob@0.3.1
	hashbrown@0.12.3
	heck@0.4.1
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	indexmap@1.9.3
	indoc@2.0.1
	insta@1.29.0
	io-lifetimes@1.0.11
	is-terminal@0.4.7
	lazy_static@1.4.0
	leptosfmt-prettyplease@0.2.16
	libc@0.2.146
	linked-hash-map@0.5.6
	linux-raw-sys@0.3.8
	memchr@2.5.0
	memoffset@0.8.0
	num_cpus@1.15.0
	once_cell@1.18.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.68
	proc-macro2-diagnostics@0.10.0
	quote@1.0.28
	rayon@1.7.0
	rayon-core@1.11.0
	rstml@0.10.6
	rustix@0.37.19
	scopeguard@1.1.0
	serde@1.0.164
	serde_derive@1.0.164
	serde_spanned@0.6.2
	similar@2.2.1
	str_indices@0.4.1
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.42
	syn_derive@0.1.6
	thiserror@1.0.40
	thiserror-impl@1.0.40
	toml@0.7.4
	toml_datetime@0.6.2
	toml_edit@0.19.10
	unicode-ident@1.0.9
	unicode-width@0.1.10
	utf8parse@0.2.1
	version_check@0.9.4
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winnow@0.4.6
	yaml-rust@0.4.5
	yansi@0.5.1
"

inherit cargo

DESCRIPTION="view macro formatter CLI for the Leptos web framework"
HOMEPAGE="https://github.com/bram209/leptosfmt"
SRC_URI="
	https://github.com/bram209/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+=" Apache-2.0 MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install --path cli

	einstalldocs
	dodoc docs/configuration.md example_leptosfmt.toml
}
