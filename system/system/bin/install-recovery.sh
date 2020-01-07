#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:15700896:9a923ce920dd51d6087b8c4b37da72b1f079b6ff; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9446304:a2ffd28eaec6de69550cf36122844811e16594e0 EMMC:/dev/block/platform/bootdevice/by-name/recovery 9a923ce920dd51d6087b8c4b37da72b1f079b6ff 15700896 a2ffd28eaec6de69550cf36122844811e16594e0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
