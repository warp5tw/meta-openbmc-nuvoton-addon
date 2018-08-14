FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
KBRANCH = "Poleg-4.13.05-OpenBMC"
SRCREV = "${AUTOREV}"

KSRC = "git://github.com/Nuvoton-Israel/linux;protocol=git;branch=${KBRANCH};"

SRC_URI += "file://defconfig "
SRC_URI += "file://0001-hwmon_change.patch"
SRC_URI += "file://0001-driver-video-npcm750-add-vcd-and-ece-driver.patch"
SRC_URI += "file://enable-vcd-ece.cfg"
SRC_URI += "file://enable-configfs-hid.cfg"

LINUX_VERSION_EXTENSION = "-${SRCREV}"
PV = "${LINUX_VERSION}+git${SRCPV}"

LINUX_VERSION = "4.13.5"
LINUX_VERSION_EXTENSION = "-nuvoton"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
