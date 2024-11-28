Langkah 1: Persiapan Lingkungan
Pastikan Anda Memiliki Akses ke Terminal
Skrip ini dijalankan di terminal pada sistem operasi berbasis Unix/Linux (misalnya Ubuntu, macOS, atau WSL di Windows).

Siapkan Direktori Sumber dan Backup

Pilih direktori sumber yang ingin dibackup (misalnya, /home/user/documents).
Tentukan lokasi untuk menyimpan backup (misalnya, /home/user/backup).
Langkah 2: Tulis Skrip
Buka terminal dan buat file baru untuk skrip:

nano backup_script.sh
Salin skrip berikut ke dalam file:

============================================================================================

#!/bin/bash

# Direktori sumber dan tujuan
SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"
LOG_FILE="/path/to/backup.log"

# Pengecekan direktori sumber
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Direktori sumber tidak ditemukan: $SOURCE_DIR"
    exit 1
fi

# Membuat direktori backup dengan timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
DEST_DIR="$BACKUP_DIR/backup_$TIMESTAMP"
mkdir -p "$DEST_DIR"

# Menyalin file dengan rsync
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/"

# Menambahkan log
echo "$(date): Backup selesai dari $SOURCE_DIR ke $DEST_DIR" >> "$LOG_FILE"
echo "Backup selesai: $DEST_DIR"

============================================================================================

Simpan dan keluar dari editor (di Nano: tekan CTRL + O, lalu Enter, dan CTRL + X).

Langkah 3: Ubah Hak Akses File
Jadikan skrip Anda dapat dijalankan:

chmod +x backup_script.sh
Langkah 4: Uji Skrip
Jalankan skrip dengan perintah:

./backup_script.sh
Jika ada kesalahan, periksa apakah path direktori sumber dan backup sudah benar.

Langkah 5: Periksa Hasil Backup
Direktori Backup: Cek direktori tujuan (BACKUP_DIR) untuk memastikan backup telah berhasil.
File Log: Periksa file log untuk melihat catatan backup.

cat /path/to/backup.log
Langkah 6: (Opsional) Otomatiskan Backup dengan Cron
Agar backup berjalan secara otomatis, tambahkan skrip ini ke cron job:

Buka editor cron:

crontab -e
Tambahkan baris berikut untuk menjalankan skrip setiap hari pukul 02:00:

0 2 * * * /path/to/backup_script.sh

Simpan dan keluar.

