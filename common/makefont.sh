#! /usr/bin/env bash

GRUB_MKFONT=grub2-mkfont

# Some distros use other filenames
_release=$(grep ID /etc/os-release | head -n 1 | sed 's/ID=//')
if [[ $_release == "arch" ]]; then
  GRUB_MKFONT=grub-mkfont
fi

$GRUB_MKFONT -o lxgw-16.pf2 -s 16 LXGWWenKaiMono-Regular.ttf
$GRUB_MKFONT -o lxgw-24.pf2 -s 24 LXGWWenKaiMono-Regular.ttf
$GRUB_MKFONT -o lxgw-32.pf2 -s 32 LXGWWenKaiMono-Regular.ttf