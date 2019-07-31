FILESEXTRAPATHS_prepend := "${THISDIR}/compulab/imx8mq:"

include compulab/imx8mq.inc

SRC_URI_append += " \
	https://github.com/compulab-yokneam/logos/raw/master/300x153x8bit/compulab.bmp;protocol=https;md5sum=da59211e201bfcecc53483a0a5c025f1;sha256sum=0a447cc174ca16236ac46c290d6c177cd6be9fc1ad96749c1784d0504522fb47 \
"

do_configure_append_cl-som-imx8 () {
	cp -rfv ${WORKDIR}/compulab.bmp ${S}/tools/logos/
}

KERNEL_MODULE_AUTOLOAD += "goodix"

COMPATIBLE_MACHINE = "(cl-som-imx8)"


PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8)"
