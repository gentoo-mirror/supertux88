# SuperTux88 Gentoo overlay

Current build status: [![Build Status](https://travis-ci.org/SuperTux88/gentoo-overlay.svg?branch=master)](https://travis-ci.org/SuperTux88/gentoo-overlay)

**use at your own risk**

## Usage

Add this to `/etc/portage/repos.conf/supertux88.conf`:

```
[supertux88]
location = /usr/local/portage-supertux88/
sync-type = git
sync-uri = git://github.com/SuperTux88/gentoo-overlay.git
auto-sync = yes
```

**or**

Install using [Layman](https://wiki.gentoo.org/wiki/Layman):

```
layman -o https://raw.github.com/SuperTux88/gentoo-overlay/master/overlay.xml -f -a supertux88
```

## Packages

The following packages are available in this overlay:

* app-admin/chefdk-omnibus
  * Omnibus installation of ChefDK
  * https://downloads.chef.io/chef-dk/
* gnome-base/gnome-control-center
  * Same as upstream, with additional `modemmanager` USE flag
* gnome-extra/gnome-tweak-tool
  * Same as upstream, with additional `gnome-shell` USE flag
* media-libs/libshout-idjc
  * needed for media-sound/idjc-9999
* media-sound/mumble
  * bleeding edge git version (9999)
  * with qt5 support
  * http://www.mumble.info
  * https://github.com/mumble-voip/mumble
* media-video/ffmpeg
  * Same as upstream, with additional `nvenc` USE flag
* media-video/nvenc-api
  * nvenc header files
  * used for ffmpeg with nvenc-support
  * https://developer.nvidia.com/nvidia-video-codec-sdk
* sys-kernel/tuxedo-wmi
  * TUXEDO WMI Treiber - Flugmodus-Taste und Tastaturbeleuchtung
  * https://www.linux-onlineshop.de/forum/index.php?page=Thread&threadID=26

