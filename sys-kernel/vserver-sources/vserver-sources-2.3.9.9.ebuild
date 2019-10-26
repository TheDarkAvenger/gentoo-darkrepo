# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="6"

K_WANT_GENPATCHES="base extras experimental"
K_GENPATCHES_VER="202"

ETYPE="sources"
CKV="4.9.197"

K_USEPV=1
K_NOSETEXTRAVERSION=1

inherit kernel-2
detect_version

KEYWORDS="amd64 ~hppa x86"
IUSE="experimental"

DESCRIPTION="Full sources including Linux-VServer patchsets for the ${KV_MAJOR}.${KV_MINOR} kernel tree"
HOMEPAGE="http://www.gentoo.org/proj/en/vps/"
SRC_URI="${KERNEL_URI} ${GENPATCHES_URI} ${ARCH_URI}
	http://vserver.13thfloor.at/Experimental/patch-${CKV}-vs${PV}.diff"

UNIPATCH_LIST="${DISTDIR}/patch-${CKV}-vs${PV}.diff"
UNIPATCH_STRICTORDER=1

pkg_postinst() {
        kernel-2_pkg_postinst
        einfo "For more info on this patchset, and how to report problems, see:"
        einfo "${HOMEPAGE}"
}

pkg_postrm() {
        kernel-2_pkg_postrm
}

