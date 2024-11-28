# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.15
	anstyle@1.0.8
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anyhow@1.0.89
	arbitrary@1.3.2
	async-trait@0.1.83
	autocfg@1.4.0
	backtrace@0.3.74
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.7.2
	bzip2@0.4.4
	bzip2-sys@0.1.11+1.0.8
	cassowary@0.3.0
	castaway@0.2.3
	cc@1.1.28
	cfg-if@1.0.0
	chrono@0.4.38
	cipher@0.4.4
	clap@4.5.19
	clap-verbosity-flag@2.2.2
	clap_builder@4.5.19
	clap_complete@4.5.32
	clap_derive@4.5.18
	clap_lex@0.7.2
	clap_mangen@0.2.23
	colorchoice@1.0.2
	compact_str@0.8.0
	console@0.15.8
	constant_time_eq@0.3.1
	core-foundation@0.9.4
	core-foundation-sys@0.8.7
	cpufeatures@0.2.14
	crc@3.2.1
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crossterm@0.28.1
	crossterm_winapi@0.9.1
	crypto-common@0.1.6
	data-encoding@2.6.0
	deflate64@0.1.9
	deranged@0.3.11
	derivative@2.2.0
	derive-new@0.5.9
	derive_arbitrary@1.3.2
	digest@0.10.7
	displaydoc@0.2.5
	either@1.13.0
	encode_unicode@0.3.6
	enum-as-inner@0.6.1
	equivalent@1.0.1
	errno@0.3.9
	fastrand@2.1.1
	flate2@1.0.34
	foldhash@0.1.3
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.1
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
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.31.1
	glob@0.3.1
	hashbrown@0.15.0
	heck@0.5.0
	hermit-abi@0.3.9
	hex@0.4.3
	hmac@0.12.1
	hostname@0.3.1
	http_req@0.12.0
	iana-time-zone@0.1.61
	iana-time-zone-haiku@0.1.2
	idna@0.4.0
	idna@0.5.0
	indexmap@2.6.0
	inout@0.1.3
	insta@1.40.0
	instability@0.3.2
	ipconfig@0.3.2
	ipnet@2.10.1
	ipnetwork@0.20.0
	is_terminal_polyfill@1.70.1
	itertools@0.13.0
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.70
	lazy_static@1.5.0
	libc@0.2.159
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	lru@0.12.5
	lru-cache@0.1.2
	lzma-rs@0.3.0
	match_cfg@0.1.0
	memchr@2.7.4
	miniz_oxide@0.8.0
	mio@1.0.2
	native-tls@0.2.12
	netstat2@0.9.1
	no-std-net@0.6.0
	ntapi@0.4.1
	num-conv@0.1.0
	num-derive@0.3.3
	num-traits@0.2.19
	num_threads@0.1.7
	object@0.36.5
	once_cell@1.20.2
	openssl@0.10.66
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.103
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pkg-config@0.3.31
	pnet@0.34.0
	pnet_base@0.34.0
	pnet_datalink@0.34.0
	pnet_macros@0.34.0
	pnet_macros_support@0.34.0
	pnet_packet@0.34.0
	pnet_sys@0.34.0
	pnet_transport@0.34.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro-crate@3.2.0
	proc-macro2@1.0.87
	procfs@0.17.0
	procfs-core@0.17.0
	quick-error@1.2.3
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	ratatui@0.28.1
	rayon@1.10.0
	rayon-core@1.12.1
	redox_syscall@0.5.7
	regex@1.11.0
	regex-automata@0.4.8
	regex-syntax@0.8.5
	relative-path@1.9.3
	resolv-conf@0.7.0
	roff@0.2.2
	rstest@0.23.0
	rstest_macros@0.23.0
	rustc-demangle@0.1.24
	rustc_version@0.4.1
	rustix@0.38.37
	rustversion@1.0.17
	ryu@1.0.18
	schannel@0.1.26
	scopeguard@1.2.0
	security-framework@2.11.1
	security-framework-sys@2.12.0
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	sha1@0.10.6
	shlex@1.3.0
	signal-hook@0.3.17
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	similar@2.6.0
	simplelog@0.12.2
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.79
	sysinfo@0.32.0
	tempfile@3.13.0
	termcolor@1.4.1
	thiserror@1.0.64
	thiserror-impl@1.0.64
	time@0.3.36
	time-core@0.1.2
	time-macros@0.2.18
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio@1.40.0
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	trust-dns-proto@0.23.2
	trust-dns-resolver@0.23.2
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	unicode-truncate@1.1.0
	unicode-width@0.1.14
	unicode-width@0.2.0
	url@2.5.2
	utf8parse@0.2.2
	vcpkg@0.2.15
	version_check@0.9.5
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.93
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-shared@0.2.93
	widestring@1.1.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.57.0
	windows-core@0.52.0
	windows-core@0.57.0
	windows-implement@0.57.0
	windows-interface@0.57.0
	windows-result@0.1.2
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
	winnow@0.6.20
	winreg@0.50.0
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

declare -A GIT_CRATES=(
	[packet-builder]='https://github.com/cyqsimon/packet_builder;bf5a89ba75795f5067bb03fa8de00b833ffe4eae;packet_builder-%commit%'
)

inherit cargo fcaps shell-completion

DESCRIPTION="Terminal bandwidth utilization tool"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/imsnif/bandwhich"
SRC_URI="
	https://github.com/imsnif/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD Boost-1.0 MIT Unicode-DFS-2016 ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RUST_MIN_VER="1.74.0"

# https://github.com/imsnif/bandwhich?tab=readme-ov-file#1-setcap
FILECAPS=(
	cap_sys_ptrace,cap_dac_read_search,cap_net_raw,cap_net_admin+ep "usr/bin/${PN}"
)

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_prepare() {
	mkdir -p "${S}/gen" || die
	export BANDWHICH_GEN_DIR="${S}/gen"

	default
}

src_install() {
	cargo_src_install

	einstalldocs
	doman "${BANDWHICH_GEN_DIR}/${PN}.1"

	newbashcomp "${BANDWHICH_GEN_DIR}/${PN}.bash" "${PN}"
	dozshcomp "${BANDWHICH_GEN_DIR}/_${PN}"
	dofishcomp "${BANDWHICH_GEN_DIR}/${PN}.fish"
}