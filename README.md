**Deskripsi:**
Skrip ini adalah alat bantu yang dirancang untuk menjalankan simulasi dinamika molekul menggunakan perangkat lunak GROMACS secara otomatis di berbagai direktori. Skrip ini membaca nilai `-extend` dari file konfigurasi terpisah dan menggunakan nilai tersebut untuk memperpanjang simulasi.

**Cara Penggunaan:**
1. Siapkan file konfigurasi `config.txt` yang berisi parameter lama extend simulasi `ps_extend`.
2. Letakkan skrip `gmx_extend.sh` dan file konfigurasi `config.txt` di direktori yang sama dengan direktori-direktori tempat Anda ingin menjalankan simulasi.
3. Berikan izin eksekusi pada skrip dengan perintah: `chmod +x gmx_extend.sh.sh`
4. Jalankan skrip dengan perintah: `./gmx_extend.sh`

**Detail Proses:**
- Skrip akan meloop melalui semua direktori di direktori kerja saat ini.
- Setiap direktori yang ditemukan akan diperiksa apakah merupakan direktori valid (bukan berkas).
- Skrip akan membaca nilai `-extend` dari file konfigurasi `config.txt` di setiap iterasi.
- Menggunakan nilai `-extend` yang dibaca, skrip akan menjalankan perintah GROMACS `convert-tpr` untuk mengubah berkas TPR dengan perpanjangan waktu yang sesuai.
- Kemudian, skrip akan menjalankan perintah GROMACS `mdrun` untuk menjalankan simulasi dinamika molekul dengan menggunakan berkas checkpoint (CPT) jika ada.

**Catatan:**
Pastikan Anda sudah menginstal GROMACS dan mengkonfigurasi lingkungan yang sesuai sebelum menjalankan skrip ini.
