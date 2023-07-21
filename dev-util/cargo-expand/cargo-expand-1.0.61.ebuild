# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler-1.0.2
	aho-corasick-1.0.2
	ansi_colours-1.2.2
	anstream-0.3.2
	anstyle-1.0.1
	anstyle-parse-0.2.1
	anstyle-query-1.0.0
	anstyle-wincon-1.0.1
	autocfg-1.1.0
	base64-0.21.2
	bat-0.23.0
	bincode-1.3.3
	bit-set-0.5.3
	bit-vec-0.6.3
	bitflags-1.3.2
	bitflags-2.3.3
	bstr-1.6.0
	bytemuck-1.13.1
	bytesize-1.2.0
	cargo-subcommand-metadata-0.1.0
	cc-1.0.79
	cfg-if-1.0.0
	clap-4.3.12
	clap_builder-4.3.12
	clap_derive-4.3.12
	clap_lex-0.5.0
	clircle-0.3.0
	colorchoice-1.0.0
	console-0.15.7
	content_inspector-0.2.4
	crc32fast-1.3.2
	dirs-5.0.1
	dirs-sys-0.4.1
	encode_unicode-0.3.6
	encoding-0.2.33
	encoding-index-japanese-1.20141219.5
	encoding-index-korean-1.20141219.5
	encoding-index-simpchinese-1.20141219.5
	encoding-index-singlebyte-1.20141219.5
	encoding-index-tradchinese-1.20141219.5
	encoding_index_tests-0.1.4
	equivalent-1.0.1
	errno-0.3.1
	errno-dragonfly-0.1.2
	fancy-regex-0.7.1
	fastrand-1.9.0
	flate2-1.0.26
	fnv-1.0.7
	getrandom-0.2.10
	globset-0.4.11
	grep-cli-0.1.8
	hashbrown-0.12.3
	hashbrown-0.14.0
	heck-0.4.1
	hermit-abi-0.3.2
	home-0.5.5
	indexmap-1.9.3
	indexmap-2.0.0
	instant-0.1.12
	io-lifetimes-1.0.11
	is-terminal-0.4.9
	itoa-1.0.9
	lazy_static-1.4.0
	libc-0.2.147
	line-wrap-0.1.1
	linked-hash-map-0.5.6
	linux-raw-sys-0.3.8
	linux-raw-sys-0.4.3
	log-0.4.19
	memchr-2.5.0
	miniz_oxide-0.7.1
	nu-ansi-term-0.47.0
	once_cell-1.18.0
	option-ext-0.2.0
	path_abs-0.5.1
	plist-1.5.0
	prettyplease-0.2.10
	proc-macro2-1.0.66
	quick-xml-0.29.0
	quote-1.0.31
	redox_syscall-0.2.16
	redox_syscall-0.3.5
	redox_users-0.4.3
	regex-1.9.1
	regex-automata-0.3.3
	regex-syntax-0.6.29
	regex-syntax-0.7.4
	rgb-0.8.36
	rustix-0.37.23
	rustix-0.38.4
	ryu-1.0.15
	safemem-0.3.3
	same-file-1.0.6
	semver-1.0.18
	serde-1.0.171
	serde_derive-1.0.171
	serde_json-1.0.103
	serde_spanned-0.6.3
	serde_yaml-0.8.26
	shell-words-1.1.0
	std_prelude-0.2.12
	strsim-0.10.0
	syn-2.0.26
	syn-select-0.3.0
	syntect-5.0.0
	tempfile-3.6.0
	termcolor-1.2.0
	thiserror-1.0.43
	thiserror-impl-1.0.43
	time-0.3.23
	time-core-0.1.1
	time-macros-0.2.10
	toml-0.7.6
	toml_datetime-0.6.3
	toml_edit-0.19.14
	toolchain_find-0.4.0
	unicode-ident-1.0.11
	unicode-width-0.1.10
	utf8parse-0.2.1
	walkdir-2.3.3
	wasi-0.11.0+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.45.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.1
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winnow-0.5.0
	yaml-rust-0.4.5
"

inherit cargo

DESCRIPTION="Subcommand to show the result of macro expansion and #[derive] expansion."
HOMEPAGE="https://github.com/dtolnay/cargo-expand"
SRC_URI="
	https://github.com/dtolnay/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 BSD CC0-1.0 LGPL-3+ MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
#KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=virtual/rust-1.70"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs
}