# Spring Web
Masih tahap percobaan. Biar mudah implemen java RMI nya

## Cara Pakai
1. Buka folder Web Spring
2. Ketik di terminal "mvn spring-boot:run"
3. Buka http://localhost/spring-java/add di browser
4. Isi formnya
5. Kalo berhasil ada keterangan "Saved", kalo gagal ada keterangan "Jumlah tiket kurang", (POST method)
6. Kalo mau coba lagi jangan direfresh, tapi di enter ulang aja URLnya. Soalnya, biar balik ke method GET lagi

## Akses Localhost Dari Device Lain (Satu Jaringan Local)
Tujuannya untuk akses localhost dari laptop/komputer/smartphone lain ke localhost kita. Dan bisa juga untuk komunikasi antar server(localhost) untuk requesting API.
1. Buka file xampp/apache/conf/httpd.conf.
2. Cari "LoadModule vhost_alias_module modules/mod_vhost_alias.so", terus hapus tanda '#' didepannya.
3. Cari "Include “conf/extra/httpd-vhosts.conf", hapus juga tanda '#' (kalau ada). Lau tekan save.
4. Lanjut buka file xampp/apache/conf/extra/httpd-xampp.conf.
5. Tambah "Allow from [IP Address]" sebelum kalimat "ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var". Tuliskan satu persatu IP yang ingin didaftarkan.
6. Jika ingin semua bisa mengakses ubah "order deny, allow dan Deny from all” menjadi “Allow from all”. (akses hanya bisa dalam satu jaringan local, misal satu wifi). Lalu tekan save.
7. Untuk bisa mengetahui IP Adress localhost (server) yang bisa diakses, buka cmd lalu ketik ipconfig.
8. Cek dibagian Wireless LAN Adapter Wi-Fi, atau adapter lain sesuai akses komputer tersebut.
9. Cek Default Gateway. Itulah IP yang dapat diakses.
10. Selesai, selamat mencoba. Jangan lupa masukkan port dan path sesuai dengan konfigurasinya ya.

## Akses Web Spring Heroku
Jika ingin mengakses langsung aplikasi web yang tersimpan di cloud :
https://sister-demo.herokuapp.com/spring-java/add
