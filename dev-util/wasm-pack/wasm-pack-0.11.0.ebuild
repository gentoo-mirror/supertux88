# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	addr2line-0.19.0
	adler-1.0.2
	aes-0.7.5
	aho-corasick-0.7.20
	android_system_properties-0.1.5
	ansi_term-0.12.1
	anstream-0.2.6
	anstyle-0.3.5
	anstyle-parse-0.1.1
	anstyle-wincon-0.2.0
	anyhow-1.0.70
	assert_cmd-2.0.10
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.67
	base64-0.21.0
	base64ct-1.6.0
	binary-install-0.1.0
	bitflags-1.3.2
	block-buffer-0.10.4
	bstr-1.4.0
	bumpalo-3.12.0
	byteorder-1.4.3
	bytes-1.4.0
	bzip2-0.4.4
	bzip2-sys-0.1.11+1.0.8
	camino-1.1.4
	cargo-platform-0.1.2
	cargo_metadata-0.15.3
	cc-1.0.79
	cfg-if-1.0.0
	chrono-0.4.24
	cipher-0.3.0
	clap-2.34.0
	codespan-reporting-0.11.1
	concolor-override-1.0.0
	concolor-query-0.3.3
	console-0.15.5
	constant_time_eq-0.1.5
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	cpufeatures-0.2.5
	crc32fast-1.3.2
	crossbeam-utils-0.8.15
	crypto-common-0.1.6
	curl-0.4.44
	curl-sys-0.4.60+curl-7.88.1
	cxx-1.0.93
	cxx-build-1.0.93
	cxxbridge-flags-1.0.93
	cxxbridge-macro-1.0.93
	dashmap-5.4.0
	dialoguer-0.10.3
	difflib-0.4.0
	digest-0.10.6
	dirs-next-2.0.0
	dirs-sys-next-0.1.2
	doc-comment-0.3.3
	either-1.8.1
	encode_unicode-0.3.6
	encoding_rs-0.8.32
	env_logger-0.10.0
	errno-0.2.8
	errno-dragonfly-0.1.2
	fastrand-1.9.0
	filetime-0.2.20
	flate2-1.0.25
	float-cmp-0.9.0
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	fs2-0.4.3
	futures-0.3.27
	futures-channel-0.3.27
	futures-core-0.3.27
	futures-executor-0.3.27
	futures-io-0.3.27
	futures-sink-0.3.27
	futures-task-0.3.27
	futures-util-0.3.27
	generic-array-0.14.6
	getrandom-0.2.8
	gimli-0.27.2
	glob-0.3.1
	h2-0.3.16
	hashbrown-0.12.3
	heck-0.3.3
	hermit-abi-0.1.19
	hermit-abi-0.2.6
	hermit-abi-0.3.1
	hex-0.4.3
	hmac-0.12.1
	http-0.2.9
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	human-panic-1.1.3
	hyper-0.14.25
	hyper-tls-0.5.0
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	idna-0.3.0
	indexmap-1.9.2
	instant-0.1.12
	io-lifetimes-1.0.8
	ipnet-2.7.1
	is-terminal-0.4.5
	is_executable-0.1.2
	itertools-0.10.5
	itoa-1.0.6
	jobserver-0.1.26
	js-sys-0.3.61
	lazy_static-1.4.0
	libc-0.2.140
	libz-sys-1.1.8
	link-cplusplus-1.0.8
	linux-raw-sys-0.1.4
	lock_api-0.4.9
	log-0.4.17
	memchr-2.5.0
	mime-0.3.16
	miniz_oxide-0.6.2
	mio-0.8.6
	native-tls-0.2.11
	normalize-line-endings-0.3.0
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.15.0
	object-0.30.3
	once_cell-1.17.1
	opaque-debug-0.3.0
	openssl-0.10.46
	openssl-macros-0.1.0
	openssl-probe-0.1.5
	openssl-src-111.25.1+1.1.1t
	openssl-sys-0.9.81
	os_info-3.6.0
	parking_lot-0.12.1
	parking_lot_core-0.9.7
	password-hash-0.4.2
	pbkdf2-0.11.0
	percent-encoding-2.2.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	predicates-2.1.5
	predicates-3.0.1
	predicates-core-1.0.6
	predicates-tree-1.0.9
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.52
	quote-1.0.26
	rand_core-0.6.4
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.1
	regex-automata-0.1.10
	regex-syntax-0.6.28
	reqwest-0.11.14
	rustc-demangle-0.1.21
	rustix-0.36.10
	ryu-1.0.13
	same-file-1.0.6
	schannel-0.1.21
	scopeguard-1.1.0
	scratch-1.0.5
	security-framework-2.8.2
	security-framework-sys-2.8.0
	semver-1.0.17
	serde-1.0.157
	serde_derive-1.0.157
	serde_ignored-0.1.7
	serde_json-1.0.94
	serde_spanned-0.6.1
	serde_urlencoded-0.7.1
	serial_test-1.0.0
	serial_test_derive-1.0.0
	sha1-0.10.5
	sha2-0.10.6
	shell-words-1.1.0
	siphasher-0.3.10
	slab-0.4.8
	smallvec-1.10.0
	socket2-0.4.9
	strsim-0.8.0
	strsim-0.10.0
	structopt-0.3.26
	structopt-derive-0.4.18
	subtle-2.4.1
	syn-1.0.109
	syn-2.0.2
	tar-0.4.38
	tempfile-3.4.0
	termcolor-1.2.0
	termtree-0.4.1
	textwrap-0.11.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	time-0.1.45
	time-0.3.20
	time-core-0.1.0
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.26.0
	tokio-native-tls-0.3.1
	tokio-util-0.7.7
	toml-0.5.11
	toml-0.7.3
	toml_datetime-0.6.1
	toml_edit-0.19.7
	tower-service-0.3.2
	tracing-0.1.37
	tracing-core-0.1.30
	try-lock-0.2.4
	typenum-1.16.0
	unicode-bidi-0.3.12
	unicode-ident-1.0.8
	unicode-normalization-0.1.22
	unicode-segmentation-1.10.1
	unicode-width-0.1.10
	url-2.3.1
	utf8parse-0.2.1
	uuid-1.3.0
	vcpkg-0.2.15
	vec_map-0.8.2
	version_check-0.9.4
	wait-timeout-0.2.0
	walkdir-2.3.3
	want-0.3.0
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-futures-0.4.34
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	web-sys-0.3.61
	which-4.4.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows-sys-0.45.0
	windows-targets-0.42.2
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_msvc-0.42.2
	windows_i686_gnu-0.42.2
	windows_i686_msvc-0.42.2
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_msvc-0.42.2
	winnow-0.3.6
	winreg-0.10.1
	xattr-0.2.3
	zeroize-1.5.7
	zip-0.6.4
	zstd-0.11.2+zstd.1.5.2
	zstd-safe-5.0.2+zstd.1.5.2
	zstd-sys-2.0.7+zstd.1.5.4
"

inherit cargo

DESCRIPTION="📦✨ your favorite rust -> wasm workflow tool!"
HOMEPAGE="https://rustwasm.github.io/wasm-pack/"
SRC_URI="
	https://github.com/rustwasm/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 BSD BSD-2 CC0-1.0 ISC MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

QA_FLAGS_IGNORED="usr/bin/${PN}"