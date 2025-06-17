#!/bin/bash

# Fungsi untuk tampilan header
draw_header() {
    clear
    echo -e "\033[1;36m"
    echo "╔═════════════════════════════════════════════════════╗"
    echo "║          🚀 PTERODACTYL DATABASE SETUp              ║"
    echo "╠═════════════════════════════════════════════════════╣"
    echo "║ Panduan Lengkap Membuat & Menggunakan Database      ║"
    echo "╚═════════════════════════════════════════════════════╝"
    echo -e "\033[0m"
}

# Fungsi untuk menampilkan pesan sukses
show_success() {
    echo -e "\n\033[1;32m✓ $1\033[0m\n"
}

# Fungsi untuk menampilkan langkah
show_step() {
    echo -e "\n\033[1;33m» Langkah $1:\033[0m $2\n"
}

# Fungsi untuk menampilkan kode
show_code() {
    echo -e "\033[1;34m$1\033[0m"
}

# Fungsi untuk menunggu input
press_enter() {
    echo -e "\n\033[36mTekan Enter untuk melanjutkan...\033[0m"
    read
}

# Main program
draw_header
show_step 1 "Buka Panel Pterodactyl"
echo "1. Akses panel melalui browser: https://panel.kanacloud.space"
echo "2. Login dengan akun Anda"
press_enter

draw_header
show_step 2 "Akses Server Target"
echo "1. Pilih server yang khusus database yang baru saja kamu beli"
echo "2. Pastikan Anda berada di halaman utama server"
press_enter

draw_header
show_step 3 "Buka Menu Databases"
echo "1. Di sidebar kiri, klik tab 'Databases'"
echo "2. Anda akan melihat daftar database yang ada"
press_enter

draw_header
show_step 4 "Buat Database Baru"
echo "1. Klik tombol 'Create Database' di kanan atas"
echo "2. Isi form:"
echo "   • Database Name: Nama unik (contoh: app_db)"
echo "   • Connections: Biarkan kosong untuk semua IP"
echo "3. Klik 'Create'"
press_enter

draw_header
show_step 5 "Catat Informasi Database"
echo "Setelah berhasil, catat detail berikut:"
echo "-------------------------------------------"
echo "Host     : ${DB_HOST}"
echo "Port     : 3306"
echo "Database : ${DB_DATABASE}"
echo "Username : ${DB_USERNAME}"
echo "Password : ${DB_PASSWORD}"
echo "-------------------------------------------"

press_enter

draw_header
show_success "Setup Database Berhasil!"
echo "Informasi database telah dikonfigurasi otomatis"
echo "Anda bisa mulai menggunakan database di aplikasi"
echo ""
echo -e "\033[1;33mTips:\033[0m"
echo "• Simpan informasi database di tempat aman"
echo "• Reset password secara berkala untuk keamanan"
echo "• Batasi IP yang bisa mengakses jika perlu"
echo ""
echo -e "\033[1;35mScript ini akan tetap berjalan untuk referensi\nTekan Ctrl+C untuk keluar\033[0m"

# Pertahankan script berjalan
while true; do
    sleep 3600
done