#!/bin/bash
# Loop melalui semua direktori dalam direktori kerja
for dir in */; do
    # Cek apakah $dir adalah direktori (bukan berkas)
    if [ -d "$dir" ]; then
        # Pindah ke direktori saat ini
        cd "$dir"
        
        # Jalankan perintah pertama
        gmx convert-tpr -s md.tpr -extend 150000 -o md.tpr
        
        # Jalankan perintah kedua
        gmx mdrun -v -deffnm md -cpi md.cpt
        
        # Kembali ke direktori awal
        cd ..
    fi
done
