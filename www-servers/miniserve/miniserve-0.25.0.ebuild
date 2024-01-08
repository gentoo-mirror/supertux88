# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	actix-codec@0.5.1
	actix-files@0.6.4
	actix-http@3.5.1
	actix-macros@0.2.4
	actix-multipart@0.6.1
	actix-multipart-derive@0.6.1
	actix-router@0.5.2
	actix-rt@2.9.0
	actix-server@2.3.0
	actix-service@2.0.2
	actix-tls@3.1.1
	actix-utils@3.0.1
	actix-web@4.4.1
	actix-web-codegen@4.2.2
	actix-web-httpauth@0.8.1
	addr2line@0.21.0
	adler@1.0.2
	adler32@1.2.0
	ahash@0.7.7
	ahash@0.8.7
	aho-corasick@1.1.2
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	alphanumeric-sort@1.5.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.79
	assert_cmd@2.0.12
	assert_fs@1.1.0
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.5
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.1
	block-buffer@0.10.4
	brotli@3.4.0
	brotli-decompressor@2.5.1
	bstr@1.9.0
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@1.5.0
	bytesize@1.3.0
	bytestring@1.3.1
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.31
	chrono-humanize@0.2.3
	clap@4.4.13
	clap_builder@4.4.12
	clap_complete@4.4.6
	clap_derive@4.4.7
	clap_lex@0.6.0
	clap_mangen@0.2.16
	codemap@0.1.3
	colorchoice@1.0.0
	colored@2.1.0
	comrak@0.20.0
	convert_case@0.4.0
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	core2@0.4.0
	cpufeatures@0.2.12
	crc32fast@1.3.2
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.17
	crossbeam-utils@0.8.18
	crypto-common@0.1.6
	darling@0.14.4
	darling@0.20.3
	darling_core@0.14.4
	darling_core@0.20.3
	darling_macro@0.14.4
	darling_macro@0.20.3
	dary_heap@0.3.6
	deranged@0.3.11
	derive_builder@0.12.0
	derive_builder_core@0.12.0
	derive_builder_macro@0.12.0
	derive_more@0.99.17
	deunicode@1.4.2
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	doc-comment@0.3.3
	either@1.9.0
	encoding_rs@0.8.33
	entities@1.0.1
	equivalent@1.0.1
	errno@0.3.8
	fake-tty@0.3.1
	fast_qr@0.11.0
	fastrand@2.0.1
	filetime@0.2.23
	flate2@1.0.28
	float-cmp@0.9.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	futf@0.1.5
	futures@0.3.30
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-timer@3.0.2
	futures-util@0.3.30
	generic-array@0.14.7
	getrandom@0.2.11
	gimli@0.28.1
	glob@0.3.1
	globset@0.4.14
	globwalk@0.8.1
	grass@0.13.1
	grass_compiler@0.13.0
	h2@0.3.22
	hashbrown@0.11.2
	hashbrown@0.12.3
	hashbrown@0.13.2
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.3
	hex@0.4.3
	html5ever@0.26.0
	http@0.2.11
	http-body@0.4.6
	http-range@0.1.5
	httparse@1.8.0
	httpdate@1.0.3
	hyper@0.14.28
	hyper-rustls@0.24.2
	iana-time-zone@0.1.59
	iana-time-zone-haiku@0.1.2
	ident_case@1.0.1
	idna@0.5.0
	if-addrs@0.11.0
	ignore@0.4.22
	impl-more@0.1.6
	include_sass@0.13.0
	indexmap@1.9.3
	indexmap@2.1.0
	ipnet@2.9.0
	itertools@0.11.0
	itoa@1.0.10
	jobserver@0.1.27
	js-sys@0.3.66
	language-tags@0.3.2
	lasso@0.6.0
	lazy_static@1.4.0
	libc@0.2.151
	libflate@2.0.0
	libflate_lz77@2.0.0
	linux-raw-sys@0.4.12
	local-channel@0.1.5
	local-waker@0.1.4
	lock_api@0.4.11
	log@0.4.20
	mac@0.1.1
	markup5ever@0.11.0
	markup5ever_rcdom@0.2.0
	maud@0.25.0
	maud_macros@0.25.0
	memchr@2.7.1
	mime@0.3.17
	mime_guess@2.0.4
	miniz_oxide@0.7.1
	mio@0.8.10
	nanoid@0.4.0
	new_debug_unreachable@1.0.4
	normalize-line-endings@0.3.0
	num-traits@0.2.17
	num_cpus@1.16.0
	num_threads@0.1.6
	object@0.32.2
	once_cell@1.19.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	parse-size@1.0.0
	paste@1.0.14
	percent-encoding@2.3.1
	phf@0.10.1
	phf_codegen@0.10.0
	phf_generator@0.10.0
	phf_macros@0.10.0
	phf_shared@0.10.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.28
	port_check@0.1.5
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	predicates@3.0.4
	predicates-core@1.0.6
	predicates-tree@1.0.9
	pretty_assertions@1.4.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.76
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.4.1
	regex@1.10.2
	regex-automata@0.4.3
	regex-syntax@0.8.2
	relative-path@1.9.2
	reqwest@0.11.23
	ring@0.16.20
	ring@0.17.7
	rle-decode-fast@1.0.3
	roff@0.2.1
	rstest@0.18.2
	rstest_macros@0.18.2
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.28
	rustls@0.20.9
	rustls@0.21.10
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustversion@1.0.14
	ryu@1.0.16
	same-file@1.0.6
	scopeguard@1.2.0
	sct@0.7.1
	select@0.6.0
	semver@1.0.21
	serde@1.0.195
	serde_derive@1.0.195
	serde_json@1.0.111
	serde_plain@1.0.2
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	signal-hook-registry@1.4.1
	simplelog@0.12.1
	siphasher@0.3.11
	slab@0.4.9
	slug@0.1.5
	smallvec@1.11.2
	socket2@0.5.5
	spin@0.5.2
	spin@0.9.8
	string_cache@0.8.7
	string_cache_codegen@0.5.2
	strsim@0.10.0
	strum@0.25.0
	strum_macros@0.25.3
	syn@1.0.109
	syn@2.0.48
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	tar@0.4.40
	tempfile@3.9.0
	tendril@0.4.3
	termcolor@1.1.3
	terminal_size@0.3.0
	termtree@0.4.1
	thiserror@1.0.56
	thiserror-impl@1.0.56
	time@0.3.31
	time-core@0.1.2
	time-macros@0.2.16
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.35.1
	tokio-rustls@0.23.4
	tokio-rustls@0.24.1
	tokio-util@0.7.10
	tower-service@0.3.2
	tracing@0.1.40
	tracing-core@0.1.32
	try-lock@0.2.5
	typed-arena@2.0.2
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode_categories@0.1.1
	untrusted@0.7.1
	untrusted@0.9.0
	url@2.5.0
	utf-8@0.7.6
	utf8parse@0.2.1
	v_htmlescape@0.15.8
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.89
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-futures@0.4.39
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-shared@0.2.89
	web-sys@0.3.66
	webpki@0.22.4
	webpki-roots@0.22.6
	webpki-roots@0.25.3
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winreg@0.50.0
	xattr@1.2.0
	xml5ever@0.17.0
	yansi@0.5.1
	zerocopy@0.7.32
	zerocopy-derive@0.7.32
	zip@0.6.6
	zstd@0.13.0
	zstd-safe@7.0.0
	zstd-sys@2.0.9+zstd.1.5.5
"

inherit cargo shell-completion systemd

DESCRIPTION="For when you really just want to serve some files over HTTP right now!"
HOMEPAGE="https://github.com/svenstaro/miniserve"
SRC_URI="
	https://github.com/svenstaro/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD-2 BSD ISC MIT MPL-2.0 Unicode-DFS-2016 ZLIB"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"
QA_PRESTRIPPED="${QA_FLAGS_IGNORED}"

src_compile() {
	cargo_src_compile

	target/release/miniserve --print-completions bash > bash-completion.sh
	target/release/miniserve --print-completions zsh > zsh-completion.zsh

	target/release/miniserve --print-manpage > "${PN}.1"
}

src_install() {
	cargo_src_install

	doman "${PN}.1"
	dodoc README.md

	newbashcomp bash-completion.sh ${PN}
	newzshcomp zsh-completion.zsh _${PN}

	systemd_dounit "packaging/${PN}@.service"
}