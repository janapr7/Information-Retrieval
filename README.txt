Program yang dibuat menggunakan Bahasa Python dengan tambahan framework Flask. Program menggunakan database MySQL untuk menyimpan dokumen.

Dokumen yang digunakan yaitu berbahasa Inggris yang berekstensi txt. Metode pembobotan dokumen yang digunakan menggunakan tiga jenis algoritma, yaitu:
1. TF/IDF
2. Overlap Coefficient
3. Simple Matching Coefficient (SMC)


*** PANDUAN MENJALANKAN ***
1). Pastikan library yang diperlukan sudah terinstall (flask, werkzeug, mysql.connector, nltk, nltk.corpus, nltk.tokenize, math).

2). Siapkan database MySQL dari SQL dump yang telah tersedia dan lakukan konfigurasi database pada program.

3). Program sudah dapat di run (direkomendasikan dengan koneksi internet). Pada halaman awal dapat dilakukan pembobotan berdasarkan keyword yang diinput, unggah dokumen, ataupun mereset database. Dokumen yang dapat diupload yaitu yang berekstensi txt.