# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	aho-corasick@0.7.20
	aho-corasick@1.1.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi_term@0.12.1
	anstyle@1.0.8
	assert_cmd@1.0.8
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-executor@1.13.1
	async-fs@2.1.2
	async-io@2.3.4
	async-lock@3.4.0
	async-process@2.3.0
	async-recursion@1.1.1
	async-signal@0.2.10
	async-task@4.7.1
	async-trait@0.1.83
	atomic-waker@1.1.2
	atty@0.2.14
	autocfg@1.4.0
	bitflags@1.3.2
	bitflags@2.6.0
	block@0.1.6
	block-buffer@0.10.4
	blocking@1.6.1
	bstr@0.2.17
	bumpalo@3.16.0
	byteorder@1.5.0
	camino@1.1.9
	cargo-platform@0.1.8
	cargo_metadata@0.18.1
	cc@1.1.24
	cfg-if@0.1.10
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chrono@0.4.38
	clap@2.34.0
	clearscreen@1.0.11
	command-group@1.0.8
	concurrent-queue@2.5.0
	console@0.15.8
	core-foundation-sys@0.8.7
	cpufeatures@0.2.14
	crossbeam-utils@0.8.20
	crypto-common@0.1.6
	darling@0.12.4
	darling_core@0.12.4
	darling_macro@0.12.4
	deranged@0.3.11
	derive_builder@0.10.2
	derive_builder_core@0.10.2
	derive_builder_macro@0.10.2
	difflib@0.4.0
	digest@0.10.7
	dirs@4.0.0
	dirs-next@2.0.0
	dirs-sys@0.3.7
	dirs-sys-next@0.1.2
	doc-comment@0.3.3
	dotenvy@0.15.7
	either@1.13.0
	encode_unicode@0.3.6
	endi@1.1.0
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	equivalent@1.0.1
	errno@0.3.9
	event-listener@5.3.1
	event-listener-strategy@0.5.2
	fastrand@2.1.1
	filetime@0.2.25
	float-cmp@0.9.0
	fnv@1.0.7
	fsevent@0.4.0
	fsevent-sys@2.0.1
	fuchsia-zircon@0.3.3
	fuchsia-zircon-sys@0.3.3
	futures-core@0.3.30
	futures-io@0.3.30
	futures-lite@2.3.0
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	generic-array@0.14.7
	getrandom@0.2.15
	glob@0.3.1
	globset@0.4.6
	hashbrown@0.15.0
	hermit-abi@0.1.19
	hermit-abi@0.4.0
	hex@0.4.3
	home@0.5.9
	iana-time-zone@0.1.61
	iana-time-zone-haiku@0.1.2
	ident_case@1.0.1
	indexmap@2.6.0
	inotify@0.7.1
	inotify-sys@0.1.5
	insta@1.40.0
	iovec@0.1.4
	is-terminal@0.4.13
	itertools@0.10.5
	itoa@1.0.11
	js-sys@0.3.70
	kernel32-sys@0.2.2
	lazy_static@1.5.0
	lazycell@1.3.0
	libc@0.2.159
	libredox@0.1.3
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	log@0.4.22
	mac-notification-sys@0.6.2
	malloc_buf@0.0.6
	memchr@2.7.4
	memoffset@0.6.5
	memoffset@0.9.1
	mio@0.6.23
	mio-extras@2.0.6
	miow@0.2.2
	net2@0.2.39
	nix@0.22.3
	nix@0.24.3
	nix@0.29.0
	nom@5.1.3
	normalize-line-endings@0.3.0
	notify@4.0.18
	notify-rust@4.11.3
	num-conv@0.1.0
	num-traits@0.2.19
	objc@0.2.7
	objc-foundation@0.1.1
	objc_id@0.1.1
	once_cell@1.20.1
	ordered-stream@0.2.0
	parking@2.2.1
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_shared@0.11.2
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	piper@0.2.4
	polling@3.7.3
	portable-atomic@1.9.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	predicates@2.1.5
	predicates@3.1.2
	predicates-core@1.0.8
	predicates-tree@1.0.11
	proc-macro-crate@3.2.0
	proc-macro2@1.0.86
	quick-xml@0.31.0
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex@1.11.0
	regex-automata@0.1.10
	regex-automata@0.4.8
	regex-syntax@0.8.5
	rustix@0.38.37
	ryu@1.0.18
	same-file@1.0.6
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_repr@0.1.19
	sha1@0.10.6
	shell-escape@0.1.5
	shlex@1.3.0
	signal-hook-registry@1.4.2
	similar@2.6.0
	siphasher@0.3.11
	slab@0.4.9
	static_assertions@1.1.0
	stderrlog@0.6.0
	strsim@0.8.0
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.79
	tauri-winrt-notification@0.2.1
	tempfile@3.13.0
	termcolor@1.1.3
	terminfo@0.7.5
	termtree@0.4.1
	textwrap@0.11.0
	thiserror@1.0.64
	thiserror-impl@1.0.64
	thread_local@1.1.8
	time@0.3.36
	time-core@0.1.2
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-ident@1.0.13
	unicode-width@0.1.14
	vec_map@0.8.2
	version_check@0.9.5
	wait-timeout@0.2.0
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.93
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-shared@0.2.93
	watchexec@1.17.2
	which@4.4.2
	winapi@0.2.8
	winapi@0.3.9
	winapi-build@0.1.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.56.0
	windows-core@0.52.0
	windows-core@0.56.0
	windows-implement@0.56.0
	windows-interface@0.56.0
	windows-result@0.1.2
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.52.6
	windows-version@0.1.1
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	ws2_32-sys@0.2.1
	xdg-home@1.3.0
	zbus@4.4.0
	zbus_macros@4.4.0
	zbus_names@3.0.0
	zerocopy@0.7.35
	zerocopy-derive@0.7.35
	zvariant@4.2.0
	zvariant_derive@4.2.0
	zvariant_utils@2.1.0
"

inherit cargo shell-completion

DESCRIPTION="Watches over your Cargo project’s source"
HOMEPAGE="https://watchexec.github.io/#cargo-watch"
SRC_URI="
	https://github.com/watchexec/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="CC0-1.0"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD CC0-1.0 ISC MIT Unicode-DFS-2016 WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND=">=virtual/rust-1.75"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install

	einstalldocs
	doman "${PN}.1"

	newzshcomp completions/zsh _${PN}
}
