# !/bin/bash
echo ""

read -p 'File extension: ' extension
# read -sp 'Password: ' passvar

for i in *.$extension; do ffmpeg -i "$i" "${i%.*}.webp"; done

echo ""
echo ""
read -p "Press 1 [Enter] for exit..."

