sudo pacman -Sc
#paccache -r -k 1 
pacman -Qtdq
pacman -Rns $(pacman -Qtdq)
du -sh ~/.cache/ 
rm -rf ~/.cache/*
du -sh ~/.local/share
#rm -rf ~/.local/share/*
echo "cleam ~/.config/"
ncdu /    
