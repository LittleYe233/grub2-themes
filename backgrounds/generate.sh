#! /usr/bin/env bash

set -o errexit

# Ensure magick is installed

readonly MAGICK=$(which magick)

function generate_image() {
    local src="$1"
    local dst="$2"
    local args="${@:3}"
    echo "Generating background image from \`$src\` to \`$dst\` ..."
    $MAGICK "$src" $args "$dst"
}

mkdir -p 4k 2k 1080p

_src="yande.re 1138191 futaribeya kawawa_sakurako seifuku yamabuki_kasumi yukiko yuri.png"
generate_image "$_src" "4k/background-yuri1.jpg" -crop 2858x1607+0+220 -quality 95
generate_image "4k/background-yuri1.jpg" "2k/background-yuri1.jpg" -resize 2560x1440 -gravity Center -extent 2560x1440 -quality 95
generate_image "4k/background-yuri1.jpg" "1080p/background-yuri1.jpg" -resize 1920x1080 -gravity Center -extent 1920x1080 -quality 95

_src="yande.re 1174208 futaribeya kawawa_sakurako seifuku yamabuki_kasumi yukiko yuri.png"
generate_image "$_src" "4k/background-yuri2.jpg" -crop 2878x1619+0+152 -quality 95
generate_image "4k/background-yuri2.jpg" "2k/background-yuri2.jpg" -resize 2560x1440 -gravity Center -extent 2560x1440 -quality 95
generate_image "4k/background-yuri2.jpg" "1080p/background-yuri2.jpg" -resize 1920x1080 -gravity Center -extent 1920x1080 -quality 95