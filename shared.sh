#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/morse_qemu_defconfig
# The defconfig from the buildroot directory we use for the project
MORSE_CODE_DRIVER_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
MORSE_CODE_DRIVER_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
MORSE_CODE_DRIVER_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${MORSE_CODE_DRIVER_MODIFIED_DEFCONFIG}
