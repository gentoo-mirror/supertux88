# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	aho-corasick@1.0.4
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.4
	anstyle@1.0.2
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anyhow@1.0.79
	autocfg@1.1.0
	base64@0.21.5
	bitflags@1.3.2
	bitflags@2.4.0
	block-buffer@0.10.4
	bumpalo@3.11.1
	bytes@1.2.1
	cc@1.0.74
	cfg-if@1.0.0
	chrono@0.4.26
	clap@4.4.14
	clap_builder@4.4.14
	clap_complete@4.4.6
	clap_derive@4.4.7
	clap_lex@0.6.0
	codespan-reporting@0.11.1
	colorchoice@1.0.0
	core-foundation@0.9.3
	core-foundation-sys@0.8.3
	cpufeatures@0.2.11
	crypto-common@0.1.6
	cxx@1.0.80
	cxx-build@1.0.80
	cxxbridge-flags@1.0.80
	cxxbridge-macro@1.0.80
	darling@0.20.3
	darling_core@0.20.3
	darling_macro@0.20.3
	digest@0.10.7
	dyn-clone@1.0.9
	either@1.8.0
	env_logger@0.10.1
	equivalent@1.0.1
	errno@0.3.2
	errno-dragonfly@0.1.2
	fnv@1.0.7
	form_urlencoded@1.1.0
	futures@0.3.25
	futures-channel@0.3.25
	futures-core@0.3.25
	futures-executor@0.3.25
	futures-io@0.3.25
	futures-macro@0.3.25
	futures-sink@0.3.25
	futures-task@0.3.25
	futures-util@0.3.25
	generic-array@0.14.7
	hashbrown@0.14.0
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.2
	home@0.5.5
	http@0.2.8
	http-body@0.4.5
	http-range-header@0.3.0
	httparse@1.8.0
	httpdate@1.0.2
	humantime@2.1.0
	hyper@0.14.22
	hyper-rustls@0.24.1
	hyper-timeout@0.4.1
	iana-time-zone@0.1.53
	iana-time-zone-haiku@0.1.1
	ident_case@1.0.1
	indexmap@2.0.0
	is-terminal@0.4.9
	itoa@1.0.4
	js-sys@0.3.60
	jsonpath-rust@0.3.5
	k8s-openapi@0.20.0
	kube@0.87.2
	kube-client@0.87.2
	kube-core@0.87.2
	kube-derive@0.87.2
	libc@0.2.152
	link-cplusplus@1.0.7
	linux-raw-sys@0.4.5
	lock_api@0.4.9
	log@0.4.20
	memchr@2.5.0
	mime@0.3.17
	mio@0.8.5
	num-traits@0.2.15
	num_cpus@1.13.1
	once_cell@1.16.0
	openssl-probe@0.1.5
	ordered-float@2.10.0
	parking_lot@0.12.1
	parking_lot_core@0.9.4
	pem@3.0.2
	percent-encoding@2.2.0
	pest@2.7.5
	pest_derive@2.7.5
	pest_generator@2.7.5
	pest_meta@2.7.5
	pin-project@1.0.12
	pin-project-internal@1.0.12
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	proc-macro2@1.0.76
	quote@1.0.35
	redox_syscall@0.2.16
	regex@1.9.3
	regex-automata@0.3.6
	regex-syntax@0.7.4
	ring@0.16.20
	rustix@0.38.8
	rustls@0.21.7
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.3
	rustls-webpki@0.101.4
	ryu@1.0.15
	schannel@0.1.22
	schemars@0.8.16
	schemars_derive@0.8.16
	scopeguard@1.1.0
	scratch@1.0.2
	sct@0.7.0
	secrecy@0.8.0
	security-framework@2.9.2
	security-framework-sys@2.9.1
	serde@1.0.195
	serde-value@0.7.0
	serde_derive@1.0.195
	serde_derive_internals@0.26.0
	serde_json@1.0.109
	serde_yaml@0.9.30
	sha2@0.10.8
	signal-hook-registry@1.4.0
	slab@0.4.7
	smallvec@1.10.0
	socket2@0.4.7
	spin@0.5.2
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.48
	termcolor@1.2.0
	thiserror@1.0.52
	thiserror-impl@1.0.52
	tokio@1.26.0
	tokio-io-timeout@1.2.0
	tokio-macros@1.8.0
	tokio-rustls@0.24.1
	tokio-util@0.7.4
	tower@0.4.13
	tower-http@0.4.3
	tower-layer@0.3.2
	tower-service@0.3.2
	tracing@0.1.37
	tracing-attributes@0.1.23
	tracing-core@0.1.30
	try-lock@0.2.3
	typed-builder@0.18.0
	typed-builder-macro@0.18.0
	typenum@1.17.0
	ucd-trie@0.1.6
	unicode-ident@1.0.11
	unicode-width@0.1.10
	unsafe-libyaml@0.2.10
	untrusted@0.7.1
	utf8parse@0.2.1
	version_check@0.9.4
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.83
	wasm-bindgen-backend@0.2.83
	wasm-bindgen-macro@0.2.83
	wasm-bindgen-macro-support@0.2.83
	wasm-bindgen-shared@0.2.83
	web-sys@0.3.60
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	zeroize@1.5.7
"

inherit cargo shell-completion

DESCRIPTION="Kubernetes OPenapI UnMangler"
HOMEPAGE="https://github.com/kube-rs/kopium"
SRC_URI="
	https://github.com/kube-rs/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+=" Apache-2.0 ISC MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_compile() {
	cargo_src_compile

	target/release/${PN} completions bash > bash-completion.sh
	target/release/${PN} completions zsh > zsh-completion.zsh
}

src_install() {
	cargo_src_install

	dodoc README.md

	newbashcomp bash-completion.sh ${PN}
	newzshcomp zsh-completion.zsh _${PN}
}