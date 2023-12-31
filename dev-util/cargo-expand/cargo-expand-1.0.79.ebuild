# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	adler@1.0.2
	aho-corasick@1.1.2
	ansi_colours@1.2.2
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	base64@0.21.5
	bat@0.24.0
	bincode@1.3.3
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.1
	bstr@1.9.0
	bytemuck@1.14.0
	bytesize@1.3.0
	cargo-subcommand-metadata@0.1.0
	cfg-if@1.0.0
	clap@4.4.12
	clap_builder@4.4.12
	clap_derive@4.4.7
	clap_lex@0.6.0
	clircle@0.4.0
	colorchoice@1.0.0
	console@0.15.7
	content_inspector@0.2.4
	crc32fast@1.3.2
	deranged@0.3.11
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	equivalent@1.0.1
	errno@0.3.8
	fancy-regex@0.11.0
	fastrand@2.0.1
	flate2@1.0.28
	fnv@1.0.7
	globset@0.4.14
	grep-cli@0.1.10
	hashbrown@0.14.3
	heck@0.4.1
	home@0.5.9
	indexmap@2.1.0
	itoa@1.0.10
	lazy_static@1.4.0
	libc@0.2.151
	line-wrap@0.1.1
	linux-raw-sys@0.4.12
	log@0.4.20
	memchr@2.7.1
	miniz_oxide@0.7.1
	nu-ansi-term@0.49.0
	once_cell@1.19.0
	path_abs@0.5.1
	plist@1.6.0
	powerfmt@0.2.0
	prettyplease@0.2.16
	proc-macro2@1.0.74
	quick-xml@0.31.0
	quote@1.0.35
	redox_syscall@0.4.1
	regex@1.10.2
	regex-automata@0.4.3
	regex-syntax@0.7.5
	regex-syntax@0.8.2
	rgb@0.8.37
	rustix@0.38.28
	ryu@1.0.16
	safemem@0.3.3
	same-file@1.0.6
	semver@1.0.20
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.109
	serde_spanned@0.6.5
	serde_yaml@0.9.29
	shell-words@1.1.0
	std_prelude@0.2.12
	strsim@0.10.0
	syn@2.0.46
	syn-select@0.3.0
	syntect@5.1.0
	tempfile@3.9.0
	termcolor@1.4.0
	thiserror@1.0.56
	thiserror-impl@1.0.56
	time@0.3.31
	time-core@0.1.2
	time-macros@0.2.16
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.21.0
	toolchain_find@0.4.0
	unicode-ident@1.0.12
	unicode-width@0.1.11
	unsafe-libyaml@0.2.10
	utf8parse@0.2.1
	walkdir@2.4.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.31
"

inherit cargo

DESCRIPTION="Subcommand to show the result of macro expansion and #[derive] expansion."
HOMEPAGE="https://github.com/dtolnay/cargo-expand"
SRC_URI="
	https://github.com/dtolnay/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD LGPL-3+ MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND=">=virtual/rust-1.70"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs
}
