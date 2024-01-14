# Copyright 2020-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit mercurial
EHG_REPO_URI="https://hg.sr.ht/~scoopta/wlrobs"

inherit meson

DESCRIPTION="An obs-studio plugin for screen capture on wlroots based wayland compositors"
HOMEPAGE="https://hg.sr.ht/~scoopta/wlrobs"

LICENSE="GPL-3"
SLOT="0"
IUSE="+dmabuf +scpy"

DEPEND="
	dev-libs/wayland
	media-video/obs-studio
	dmabuf? ( x11-libs/libdrm )
"
RDEPEND="${DEPEND}"
BDEPEND="
	virtual/pkgconfig
"

src_configure() {
	local emesonargs=(
		$(meson_use dmabuf use_dmabuf)
		$(meson_use scpy use_scpy)
	)
	meson_src_configure
}
