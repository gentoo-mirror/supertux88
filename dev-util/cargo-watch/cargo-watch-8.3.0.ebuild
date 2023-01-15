# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	aho-corasick-0.7.20
	android_system_properties-0.1.5
	ansi_term-0.12.1
	assert_cmd-1.0.8
	async-broadcast-0.4.1
	async-channel-1.8.0
	async-executor-1.5.0
	async-io-1.12.0
	async-lock-2.6.0
	async-recursion-1.0.0
	async-task-4.3.0
	async-trait-0.1.60
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	block-0.1.6
	block-buffer-0.10.3
	bstr-0.2.17
	bumpalo-3.11.1
	byteorder-1.4.3
	camino-1.1.2
	cargo-platform-0.1.2
	cargo_metadata-0.15.2
	cc-1.0.78
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.23
	clap-2.34.0
	clearscreen-1.0.11
	codespan-reporting-0.11.1
	command-group-1.0.8
	concurrent-queue-2.0.0
	console-0.15.4
	core-foundation-sys-0.8.3
	cpufeatures-0.2.5
	crossbeam-utils-0.8.14
	crypto-common-0.1.6
	cxx-1.0.85
	cxx-build-1.0.85
	cxxbridge-flags-1.0.85
	cxxbridge-macro-1.0.85
	darling-0.12.4
	darling_core-0.12.4
	darling_macro-0.12.4
	derivative-2.2.0
	derive_builder-0.10.2
	derive_builder_core-0.10.2
	derive_builder_macro-0.10.2
	difflib-0.4.0
	digest-0.10.6
	dirs-2.0.2
	dirs-4.0.0
	dirs-next-2.0.0
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	doc-comment-0.3.3
	dotenvy-0.15.6
	either-1.8.0
	encode_unicode-0.3.6
	enumflags2-0.7.5
	enumflags2_derive-0.7.4
	event-listener-2.5.3
	fastrand-1.8.0
	filetime-0.2.19
	float-cmp-0.9.0
	fnv-1.0.7
	fsevent-0.4.0
	fsevent-sys-2.0.1
	fuchsia-zircon-0.3.3
	fuchsia-zircon-sys-0.3.3
	futures-core-0.3.25
	futures-io-0.3.25
	futures-lite-1.12.0
	futures-sink-0.3.25
	futures-task-0.3.25
	futures-util-0.3.25
	generic-array-0.14.6
	getrandom-0.1.16
	getrandom-0.2.8
	glob-0.3.0
	globset-0.4.6
	heck-0.3.3
	hermit-abi-0.1.19
	hex-0.4.3
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	ident_case-1.0.1
	inotify-0.7.1
	inotify-sys-0.1.5
	insta-1.26.0
	instant-0.1.12
	iovec-0.1.4
	itertools-0.10.5
	itoa-1.0.5
	js-sys-0.3.60
	kernel32-sys-0.2.2
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.139
	link-cplusplus-1.0.8
	linked-hash-map-0.5.6
	lock_api-0.4.9
	log-0.4.17
	mac-notification-sys-0.5.6
	malloc_buf-0.0.6
	memchr-2.5.0
	memoffset-0.6.5
	mio-0.6.23
	mio-extras-2.0.6
	miow-0.2.2
	net2-0.2.38
	nix-0.22.3
	nix-0.24.3
	nix-0.25.1
	nom-5.1.2
	normalize-line-endings-0.3.0
	notify-4.0.17
	notify-rust-4.7.0
	num-integer-0.1.45
	num-traits-0.2.15
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	once_cell-1.16.0
	ordered-stream-0.1.2
	parking-2.0.0
	parking_lot-0.12.1
	parking_lot_core-0.9.5
	phf-0.8.0
	phf_codegen-0.8.0
	phf_generator-0.8.0
	phf_shared-0.8.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	polling-2.5.2
	ppv-lite86-0.2.17
	predicates-2.1.5
	predicates-core-1.0.5
	predicates-tree-1.0.7
	proc-macro-crate-1.2.1
	proc-macro2-1.0.49
	quick-xml-0.23.1
	quote-1.0.23
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.4
	rand_hc-0.2.0
	rand_pcg-0.2.1
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.0
	regex-automata-0.1.10
	regex-syntax-0.6.28
	remove_dir_all-0.5.3
	ryu-1.0.12
	same-file-1.0.6
	scopeguard-1.1.0
	scratch-1.0.3
	semver-1.0.16
	serde-1.0.152
	serde_derive-1.0.152
	serde_json-1.0.91
	serde_repr-0.1.10
	sha1-0.10.5
	shell-escape-0.1.5
	similar-2.2.1
	siphasher-0.3.10
	slab-0.4.7
	smallvec-1.10.0
	socket2-0.4.7
	static_assertions-1.1.0
	stderrlog-0.5.4
	strsim-0.8.0
	strsim-0.10.0
	strum-0.22.0
	strum_macros-0.22.0
	syn-1.0.107
	tauri-winrt-notification-0.1.0
	tempfile-3.3.0
	termcolor-1.1.3
	terminfo-0.7.3
	termtree-0.4.0
	textwrap-0.11.0
	thiserror-1.0.38
	thiserror-impl-1.0.38
	thread_local-1.1.4
	time-0.3.17
	time-core-0.1.0
	toml-0.5.10
	tracing-0.1.37
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	typenum-1.16.0
	uds_windows-1.0.2
	unicode-ident-1.0.6
	unicode-segmentation-1.10.0
	unicode-width-0.1.10
	vec_map-0.8.2
	version_check-0.9.4
	wait-timeout-0.2.0
	waker-fn-1.1.0
	walkdir-2.3.2
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.83
	wasm-bindgen-backend-0.2.83
	wasm-bindgen-macro-0.2.83
	wasm-bindgen-macro-support-0.2.83
	wasm-bindgen-shared-0.2.83
	watchexec-1.17.1
	wepoll-ffi-0.1.2
	which-4.3.0
	winapi-0.2.8
	winapi-0.3.9
	winapi-build-0.1.1
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.39.0
	windows-sys-0.42.0
	windows_aarch64_gnullvm-0.42.0
	windows_aarch64_msvc-0.39.0
	windows_aarch64_msvc-0.42.0
	windows_i686_gnu-0.39.0
	windows_i686_gnu-0.42.0
	windows_i686_msvc-0.39.0
	windows_i686_msvc-0.42.0
	windows_x86_64_gnu-0.39.0
	windows_x86_64_gnu-0.42.0
	windows_x86_64_gnullvm-0.42.0
	windows_x86_64_msvc-0.39.0
	windows_x86_64_msvc-0.42.0
	ws2_32-sys-0.2.1
	yaml-rust-0.4.5
	zbus-3.6.2
	zbus_macros-3.6.2
	zbus_names-2.4.0
	zvariant-3.9.0
	zvariant_derive-3.9.0
"

inherit cargo

DESCRIPTION="Watches over your Cargo project’s source"
HOMEPAGE="https://github.com/watchexec/cargo-watch"
SRC_URI="
	https://github.com/watchexec/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 BSD BSD-2 CC0-1.0 ISC MIT WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs
	doman "${PN}.1"
}
