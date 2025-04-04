# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.75
	arc-swap@1.6.0
	assert_cmd@2.0.12
	autocfg@1.1.0
	backtrace@0.3.69
	base16ct@0.2.0
	base64@0.21.5
	base64ct@1.6.0
	better-panic@0.3.0
	bitflags@1.3.2
	bitflags@2.4.1
	bitmaps@2.1.0
	block-buffer@0.10.4
	bstr@1.8.0
	btoi@0.4.3
	bumpalo@3.14.0
	bytes@1.5.0
	bytesize@1.3.0
	byteyarn@0.2.3
	camino@1.1.6
	cargo@0.75.1
	cargo-credential@0.4.1
	cargo-credential-libsecret@0.4.0
	cargo-credential-macos-keychain@0.4.0
	cargo-credential-wincred@0.4.0
	cargo-platform@0.1.5
	cargo-util@0.2.7
	cargo_metadata@0.15.4
	cc@1.0.83
	cfg-expr@0.10.3
	cfg-if@1.0.0
	clap@4.4.11
	clap_builder@4.4.11
	clap_lex@0.6.0
	clru@0.6.1
	color-print@0.3.5
	color-print-proc-macro@0.3.5
	colorchoice@1.0.0
	colored@2.1.0
	console@0.15.7
	const-oid@0.9.5
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	cpufeatures@0.2.11
	crates-io@0.39.0
	crc32fast@1.3.2
	crossbeam-channel@0.5.8
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ct-codecs@1.1.1
	curl@0.4.44
	curl-sys@0.4.70+curl-8.5.0
	der@0.7.8
	deranged@0.3.10
	difflib@0.4.0
	digest@0.10.7
	doc-comment@0.3.3
	dunce@1.0.4
	ecdsa@0.16.9
	ed25519-compact@2.0.4
	either@1.9.0
	elliptic-curve@0.13.8
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	equivalent@1.0.1
	erased-serde@0.4.0
	errno@0.3.8
	faster-hex@0.8.1
	faster-hex@0.9.0
	fastrand@2.0.1
	ff@0.13.0
	fiat-crypto@0.2.5
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.28
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.1
	fs_extra@1.3.0
	futures@0.3.29
	futures-channel@0.3.29
	futures-core@0.3.29
	futures-executor@0.3.29
	futures-io@0.3.29
	futures-macro@0.3.29
	futures-sink@0.3.29
	futures-task@0.3.29
	futures-timer@3.0.2
	futures-util@0.3.29
	generic-array@0.14.7
	getrandom@0.2.11
	gimli@0.28.1
	git2@0.18.1
	git2-curl@0.19.0
	gix@0.54.1
	gix-actor@0.27.0
	gix-attributes@0.19.0
	gix-bitmap@0.2.8
	gix-chunk@0.4.5
	gix-command@0.2.10
	gix-commitgraph@0.21.0
	gix-config@0.30.0
	gix-config-value@0.14.1
	gix-credentials@0.20.0
	gix-date@0.8.1
	gix-diff@0.36.0
	gix-discover@0.25.0
	gix-features@0.35.0
	gix-filter@0.5.0
	gix-fs@0.7.0
	gix-glob@0.13.0
	gix-hash@0.13.3
	gix-hashtable@0.4.1
	gix-ignore@0.8.0
	gix-index@0.25.0
	gix-lock@10.0.0
	gix-macros@0.1.1
	gix-negotiate@0.8.0
	gix-object@0.37.0
	gix-odb@0.53.0
	gix-pack@0.43.0
	gix-packetline@0.16.7
	gix-packetline-blocking@0.16.6
	gix-path@0.10.1
	gix-pathspec@0.3.0
	gix-prompt@0.7.0
	gix-protocol@0.40.0
	gix-quote@0.4.8
	gix-ref@0.37.0
	gix-refspec@0.18.0
	gix-revision@0.22.0
	gix-revwalk@0.8.0
	gix-sec@0.10.1
	gix-submodule@0.4.0
	gix-tempfile@10.0.0
	gix-trace@0.1.4
	gix-transport@0.37.0
	gix-traverse@0.33.0
	gix-url@0.24.0
	gix-utils@0.1.6
	gix-validate@0.8.1
	gix-worktree@0.26.0
	glob@0.3.1
	globset@0.4.14
	group@0.13.0
	hashbrown@0.14.3
	heck@0.4.1
	hex@0.4.3
	hkdf@0.12.3
	hmac@0.12.1
	home@0.5.5
	http-auth@0.1.8
	humantime@2.1.0
	idna@0.5.0
	ignore@0.4.21
	im-rc@15.1.0
	indexmap@2.1.0
	insta@1.34.0
	itertools@0.10.5
	itertools@0.11.0
	itoa@1.0.10
	jobserver@0.1.27
	js-sys@0.3.66
	krates@0.11.0
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.151
	libgit2-sys@0.16.2+1.7.2
	libloading@0.8.1
	libnghttp2-sys@0.1.8+1.55.1
	libssh2-sys@0.3.0
	libz-sys@1.1.12
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.12
	lock_api@0.4.11
	log@0.4.20
	matchers@0.1.0
	maybe-async@0.2.7
	memchr@2.6.4
	memmap2@0.7.1
	memoffset@0.9.0
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	miow@0.6.0
	nom@7.1.3
	normpath@1.1.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.17
	num_threads@0.1.6
	object@0.32.1
	once_cell@1.19.0
	opener@0.6.1
	openssl@0.10.61
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.2.1+3.2.0
	openssl-sys@0.9.97
	ordered-float@2.10.1
	orion@0.17.6
	os_info@3.7.0
	overload@0.1.1
	p384@0.13.0
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	pasetors@0.6.7
	pathdiff@0.2.1
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	petgraph@0.6.4
	pico-args@0.5.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkcs8@0.10.2
	pkg-config@0.3.27
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	predicates@3.0.4
	predicates-core@1.0.6
	predicates-tree@1.0.9
	primeorder@0.13.6
	proc-macro2@1.0.70
	prodash@26.2.2
	pulldown-cmark@0.9.3
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xoshiro@0.6.0
	rayon@1.8.0
	rayon-core@1.12.0
	redox_syscall@0.4.1
	regex@1.10.2
	regex-automata@0.1.10
	regex-automata@0.4.3
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	rfc6979@0.4.0
	rstest@0.17.0
	rstest_macros@0.17.0
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustfix@0.6.1
	rustix@0.38.28
	rustversion@1.0.14
	ryu@1.0.16
	same-file@1.0.6
	schannel@0.1.22
	scopeguard@1.2.0
	sec1@0.7.3
	security-framework@2.9.2
	security-framework-sys@2.9.1
	semver@1.0.20
	serde@1.0.193
	serde-untagged@0.1.2
	serde-value@0.7.0
	serde_derive@1.0.193
	serde_ignored@0.1.9
	serde_json@1.0.108
	serde_spanned@0.6.4
	sha1@0.10.6
	sha1_smol@1.0.0
	sha2@0.10.8
	sharded-slab@0.1.7
	shell-escape@0.1.5
	signature@2.2.0
	similar@2.3.0
	sized-chunks@0.6.5
	slab@0.4.9
	smallvec@1.11.2
	socket2@0.4.10
	spki@0.7.3
	strsim@0.10.0
	strum@0.24.1
	strum_macros@0.24.3
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.40
	tar@0.4.40
	tempfile@3.8.1
	terminal_size@0.3.0
	termtree@0.4.1
	thiserror@1.0.50
	thiserror-impl@1.0.50
	thread_local@1.1.7
	time@0.3.37
	time-core@0.1.2
	time-macros@0.2.19
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.7.8
	toml_datetime@0.6.5
	toml_edit@0.19.15
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.14
	unicode-bom@2.0.3
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	unicode-xid@0.2.4
	url@2.5.0
	utf8parse@0.2.1
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.89
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-shared@0.2.89
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.48.0
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
	winnow@0.5.28
	yaml-rust@0.4.5
	zeroize@1.7.0
"

inherit cargo

DESCRIPTION="Detects usage of unsafe Rust in a Rust crate and its dependencies."
HOMEPAGE="https://github.com/geiger-rs/cargo-geiger"
SRC_URI="
	https://github.com/geiger-rs/${PN}/archive/${PN}@v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

S="${WORKDIR}/${PN}-${PN}-v${PV}"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC MIT MPL-2.0 MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/libgit2:="
RDEPEND="${DEPEND}"

#RUST_MAX_VER="1.79.0"

PATCHES=(
	"${FILESDIR}"/${P}-update-libgit2-sys.patch
	"${FILESDIR}"/${P}-update-time.patch
	"${FILESDIR}"/${P}-allow-warnings.patch
)

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_compile() {
	cargo_src_compile --bin ${PN}
}

src_install() {
	cargo_src_install --path ${PN}

	einstalldocs
}
