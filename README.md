# Muhammad Rafie Al Habsyi Setiawan
# 2202400

Kelas Item:

- Properti-properti seperti name (nama barang) dan quantity (jumlah barang) digunakan untuk menyimpan informasi tentang barang.
- Metode updateQuantity digunakan untuk memperbarui jumlah barang.
- Metode toString dioverride untuk memberikan representasi string dari objek Item.

Kelas Inventory:

- Metode addItem digunakan untuk menambahkan item baru ke dalam inventory.
- Metode updateItemQuantity merupakan metode asyncronus yang digunakan untuk memperbarui jumlah barang. Dalam contoh ini, operasi tersebut disimulasikan dengan menggunakan Future.delayed.
- Metode getItemByName digunakan untuk mencari item berdasarkan nama. Dalam kasus item tidak ditemukan, akan mengembalikan null.
- Metode displayInventory digunakan untuk menampilkan semua item yang ada dalam inventory.

Implementasi Asyncronus:

Metode updateItemQuantity dari kelas Inventory diimplementasikan secara asyncronus menggunakan async dan await. metode tersebut untuk melakukan operasi I/O seperti menunggu respons dari server atau mengakses file tanpa menghentikan jalannya program.
Dalam contoh ini, saya menggunakan await Future.delayed(Duration(seconds: 2)) untuk mensimulasikan operasi yang membutuhkan waktu seperti pembaruan stok barang dari sumber eksternal.



![Screenshot 2024-03-14 140452](https://github.com/ssamu11/TP1PROVIS/assets/134787786/04e97133-f7b7-48cd-b7ca-4e189bbd43c2)
