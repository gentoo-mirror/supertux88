# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.7.8
	ahash@0.8.11
	aho-corasick@0.7.20
	aho-corasick@1.1.3
	aligned@0.4.2
	anstream@0.6.15
	anstyle@1.0.8
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anyhow@1.0.89
	arbitrary@1.3.2
	arc-swap@1.7.1
	as-slice@0.2.1
	async-trait@0.1.83
	atomic-waker@1.1.2
	autocfg@1.4.0
	aws-lc-rs@1.10.0
	aws-lc-sys@0.22.0
	axum@0.7.7
	axum-core@0.4.5
	axum-server@0.7.1
	backtrace@0.3.74
	base64@0.22.1
	base64-simd@0.7.0
	bindgen@0.69.5
	bitflags@1.3.2
	bitflags@2.6.0
	bitvec@1.0.1
	block-buffer@0.10.4
	bumpalo@3.16.0
	bytecheck@0.6.12
	bytecheck_derive@0.6.12
	bytemuck@1.19.0
	byteorder@1.5.0
	bytes@1.7.2
	bzip2@0.4.4
	bzip2-sys@0.1.11+1.0.8
	camino@1.1.9
	cargo-lock@9.0.0
	cargo-platform@0.1.8
	cargo_metadata@0.18.1
	cc@1.1.30
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chrono@0.4.38
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.5.20
	clap_builder@4.5.20
	clap_derive@4.5.18
	clap_lex@0.7.2
	clap_mangen@0.2.24
	cmake@0.1.51
	colorchoice@1.0.2
	console@0.15.8
	const-str@0.3.2
	const-str-proc-macro@0.3.2
	constant_time_eq@0.3.1
	convert_case@0.4.0
	convert_case@0.6.0
	core-foundation@0.9.4
	core-foundation-sys@0.8.7
	cpufeatures@0.2.14
	crates_io_api@0.11.0
	crc@3.2.1
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crypto-common@0.1.6
	cssparser@0.27.2
	cssparser@0.33.0
	cssparser-color@0.1.0
	cssparser-macros@0.6.1
	cvt@0.1.2
	dashmap@5.5.3
	data-encoding@2.6.0
	data-url@0.1.1
	deflate64@0.1.9
	deranged@0.3.11
	derive_arbitrary@1.3.2
	derive_more@0.99.18
	digest@0.10.7
	directories@5.0.1
	dirs-sys@0.4.1
	displaydoc@0.2.5
	dtoa@1.0.9
	dtoa-short@0.3.5
	dunce@1.0.5
	dyn-clone@1.0.17
	either@1.13.0
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	enum-as-inner@0.6.1
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	errno@0.3.9
	fastrand@2.1.1
	file-id@0.2.1
	filetime@0.2.25
	flate2@1.0.34
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.1
	fs_at@0.2.1
	fs_extra@1.3.0
	fsevent-sys@4.1.0
	funty@2.0.0
	futures@0.3.31
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	fxhash@0.2.1
	generic-array@0.14.7
	getrandom@0.1.16
	getrandom@0.2.15
	gimli@0.31.1
	glob@0.3.1
	h2@0.4.6
	hashbrown@0.12.3
	hashbrown@0.13.2
	hashbrown@0.14.5
	hashbrown@0.15.0
	heck@0.5.0
	hermit-abi@0.3.9
	hickory-proto@0.24.1
	hickory-resolver@0.24.1
	hmac@0.12.1
	home@0.5.9
	homedir@0.3.4
	hostname@0.3.1
	htmlescape@0.3.1
	http@1.1.0
	http-body@1.0.1
	http-body-util@0.1.2
	http-range-header@0.4.1
	httparse@1.9.5
	httpdate@1.0.3
	humantime@2.1.0
	humantime-serde@1.1.1
	hyper@1.4.1
	hyper-rustls@0.27.3
	hyper-tls@0.6.0
	hyper-util@0.1.9
	idna@0.4.0
	idna@0.5.0
	indexmap@2.6.0
	inotify@0.9.6
	inotify-sys@0.1.5
	inout@0.1.3
	ipconfig@0.3.2
	ipnet@2.10.1
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itoa@0.4.8
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.72
	kqueue@1.0.8
	kqueue-sys@1.0.4
	lazy_static@1.5.0
	lazycell@1.3.0
	libc@0.2.159
	libdeflate-sys@1.22.0
	libdeflater@1.22.0
	libloading@0.8.5
	libredox@0.1.3
	lightningcss@1.0.0-alpha.59
	lightningcss-derive@1.0.0-alpha.43
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	local-ip-address@0.6.3
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	lol_html@1.2.1
	lru-cache@0.1.2
	lzma-rs@0.3.0
	match_cfg@0.1.0
	matchers@0.1.0
	matches@0.1.10
	matchit@0.7.3
	memchr@2.7.4
	mime@0.3.17
	mime_guess@2.0.5
	minify-html@0.15.0
	minify-html-common@0.0.2
	minify-js@0.5.6
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@0.8.11
	mio@1.0.2
	mirai-annotations@1.12.0
	native-tls@0.2.12
	neli@0.6.4
	neli-proc-macros@0.1.3
	nix@0.29.0
	nodrop@0.1.14
	nom@7.1.3
	normpath@1.3.0
	notify@6.1.1
	notify-debouncer-full@0.3.2
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.19
	object@0.36.5
	once_cell@1.20.2
	open@5.3.0
	openssl@0.10.66
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.3.2+3.3.2
	openssl-sys@0.9.103
	option-ext@0.2.0
	outref@0.1.0
	overload@0.1.1
	oxipng@9.1.2
	parcel_selectors@0.27.0
	parcel_sourcemap@2.1.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	parse-js@0.17.0
	paste@1.0.15
	pathdiff@0.2.2
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	phf@0.8.0
	phf@0.10.1
	phf@0.11.2
	phf_codegen@0.8.0
	phf_codegen@0.10.0
	phf_generator@0.8.0
	phf_generator@0.10.0
	phf_generator@0.11.2
	phf_macros@0.8.0
	phf_macros@0.11.2
	phf_shared@0.8.0
	phf_shared@0.10.0
	phf_shared@0.11.2
	pin-project@1.1.6
	pin-project-internal@1.1.6
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pkg-config@0.3.31
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	precomputed-hash@0.1.1
	prettyplease@0.2.22
	proc-macro-crate@3.2.0
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.87
	ptr_meta@0.1.4
	ptr_meta_derive@0.1.4
	quick-error@1.2.3
	quinn@0.11.5
	quinn-proto@0.11.8
	quinn-udp@0.5.5
	quote@1.0.37
	radium@0.7.0
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.4
	rand_hc@0.2.0
	rand_pcg@0.2.1
	rayon@1.10.0
	rayon-core@1.12.1
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex@1.11.0
	regex-automata@0.1.10
	regex-automata@0.4.8
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	relative-path@1.9.3
	remove_dir_all@0.8.4
	rend@0.4.2
	reqwest@0.12.8
	resolv-conf@0.7.0
	rgb@0.8.50
	ring@0.17.8
	rkyv@0.7.45
	rkyv_derive@0.7.45
	roff@0.2.2
	rstest@0.23.0
	rstest_macros@0.23.0
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rustc_version@0.4.1
	rustix@0.38.37
	rustls@0.23.14
	rustls-native-certs@0.8.0
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustversion@1.0.18
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	schemars@0.8.21
	schemars_derive@0.8.21
	scopeguard@1.2.0
	seahash@4.1.0
	security-framework@2.11.1
	security-framework-sys@2.12.0
	selectors@0.22.0
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_derive_internals@0.29.1
	serde_json@1.0.128
	serde_path_to_error@0.1.16
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	serde_yaml@0.9.33
	servo_arc@0.1.1
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-abstraction@0.7.1
	simd-adler32@0.3.7
	simdutf8@0.1.5
	siphasher@0.3.11
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	spin@0.9.8
	stable_deref_trait@1.2.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.79
	sync_wrapper@0.1.2
	sync_wrapper@1.0.1
	tap@1.0.1
	tar@0.4.42
	tempfile@3.13.0
	terminal_size@0.4.0
	thin-slice@0.1.1
	thiserror@1.0.64
	thiserror-impl@1.0.64
	thread_local@1.1.8
	time@0.3.36
	time-core@0.1.2
	time-macros@0.2.18
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio@1.40.0
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-openssl@0.6.5
	tokio-rustls@0.26.0
	tokio-stream@0.1.16
	tokio-tungstenite@0.24.0
	tokio-util@0.7.12
	toml@0.7.8
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.19.15
	toml_edit@0.22.22
	tower@0.4.13
	tower@0.5.1
	tower-http@0.6.1
	tower-layer@0.3.3
	tower-service@0.3.3
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	try-lock@0.2.5
	tungstenite@0.24.0
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unsafe-libyaml@0.2.11
	untrusted@0.9.0
	url@2.5.2
	utf-8@0.7.6
	utf8parse@0.2.2
	uuid@1.10.0
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.5
	vlq@0.5.1
	walkdir@2.5.0
	want@0.3.1
	wasi@0.9.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.95
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-streams@0.4.1
	web-sys@0.3.72
	webpki-roots@0.26.6
	which@4.4.2
	which@6.0.3
	widestring@1.1.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.57.0
	windows-core@0.57.0
	windows-implement@0.57.0
	windows-interface@0.57.0
	windows-registry@0.2.0
	windows-result@0.1.2
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.5.40
	winnow@0.6.20
	winreg@0.50.0
	winsafe@0.0.19
	wyz@0.5.1
	xattr@1.3.1
	zerocopy@0.7.35
	zerocopy-derive@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.0
	zopfli@0.8.1
	zstd@0.13.2
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
"

inherit cargo

DESCRIPTION="Build, bundle & ship your Rust WASM application to the web."
HOMEPAGE="https://trunkrs.dev"
SRC_URI="
	https://github.com/thedodd/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 openssl
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND=">=virtual/rust-1.77"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"