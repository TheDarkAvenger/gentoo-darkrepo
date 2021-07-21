# darkrepo-overlay

Unofficial portage overlay for Gentoo Linux providing ebuilds for various packages.

Currently available packages:

**sys-kernel/vserver-sources** (*Updated as soon as possible*)

**sys-cluster/util-vserver**

**dev-libs/dietlibc**

**virtual/linux-sources** (**Required for vservers-sources**)

**net-p2p/createtorrent**

# How to use this overlay

## with local overlays

[Local overlays](https://wiki.gentoo.org/wiki/Overlay/Local_overlay) should be managed via `/etc/portage/repos.conf/`.
To enable this overlay make sure you are using a recent Portage version (at least `2.2.14`), and create a `/etc/portage/repos.conf/darkrepo-overlay.conf` file containing precisely:

```
[darkrepo-overlay]
location = /usr/local/portage/darkrepo-overlay
sync-type = git
sync-uri = https://github.com/dark0z/gentoo-darkrepo.git
priority=9999
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all our ebuilds available.
