#!/bin/bash

# Data semua langkah dalam array
steps=(
    "Buka Panel Pterodactyl\n1. Akses: https://panel.kanacloud.space\n2. Login dengan akun Anda"
    "Akses Server Target\n1. Pilih server database yang baru saja kamu beli\n2. Pastikan Anda di halaman utama server"
    "Buka Menu Databases\n1. Di sidebar kiri, klik 'Databases'\n2. Lihat daftar database yang tersedia"
    "Buat Database Baru\n1. Klik 'Create Database'\n2. Isi:\n   • Database Name (cth: app_db)\n   • Connections kosongkan\n3. Klik 'Create'"
    "Catat Informasi Database\nHost     : \${DB_HOST}\nPort     : 3306\nDatabase : \${DB_DATABASE}\nUsername : \${DB_USERNAME}\nPassword : \${DB_PASSWORD}"
)

# Fungsi untuk tampilan header
draw_header() {
    clear
    echo -e "\033[1;36m"
    echo "╔═════════════════════════════════════════════════════╗"
    echo "║          🚀 PTERODACTYL DATABASE SETUP             ║"
    echo "╠═════════════════════════════════════════════════════╣"
    echo "║ Panduan Lengkap Membuat & Menggunakan Database      ║"
    echo "╚═════════════════════════════════════════════════════╝"
    echo -e "\033[0m"
}

# Fungsi untuk menampilkan langkah
show_step() {
    echo -e "\n\033[1;33m» Langkah $1:\033[0m"
    echo -e "\n${steps[$1]}"
}

# Fungsi untuk akhir script
show_success() {
    draw_header
    echo -e "\n\033[1;32m✓ Setup Database Berhasil!\033[0m\n"
    echo "Informasi database telah dikonfigurasi otomatis."
    echo "Anda bisa mulai menggunakannya di aplikasi."
    echo -e "\n\033[1;33mTips:\033[0m"
    echo "• Simpan informasi database di tempat aman"
    echo "• Reset password secara berkala"
    echo "• Batasi IP yang bisa akses database"
    echo -e "\n\033[1;35mScript ini akan tetap berjalan sebagai referensi\nTekan Ctrl+C untuk keluar.\033[0m"
    while true; do sleep 3600; done
}

# Mulai dari langkah 0
current=0
total_steps=${#steps[@]}

# Main loop
while true; do
    draw_header
    show_step $current

    echo -e "\n\033[36mKetik 1 untuk lanjut, 0 untuk kembali\033[0m"
    read -rp "Pilihan Anda: " choice

    if [[ "$choice" == "1" ]]; then
        ((current++))
        if (( current >= total_steps )); then
            show_success
            break
        fi
    elif [[ "$choice" == "0" ]]; then
        ((current--))
        if (( current < 0 )); then current=0; fi
    else
        echo -e "\n\033[31mInput tidak dikenali. Harap ketik 1 atau 0.\033[0m"
        sleep 1
    fi
done
