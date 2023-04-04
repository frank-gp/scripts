# !/bin/bash
read -p "Press 1 [Enter] for continue..."

echo ""

# read -p 'File extension: ' extension
# read -sp 'Password: ' passvar

for i in *.jpg; do ffmpeg -i "$i" "${i%.*}.webp"; done

echo ""
echo ""
read -p "Press 1 [Enter] for exit..."

