-- Nama			: Andrian Maulana
-- Nim			: 23241020
-- Kelas		: A
-- Mata Kuliah	: Administrasi Basis Data

-- no 2
-- tampilkan nama pelanggan dan nilai transaksinya dengan nilai transaksi terkecil
SELECT 
mp.nama_pelanggan,
tp.kode_pelanggan,
MIN(tp.qty * tp.harga) AS nilai_transaksi_terkecil
FROM tr_penjualan_dqlab tp
JOIN ms_pelanggan_dqlab mp 
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- no 1
-- Munculkan nama produk, tgl transaksi, bulan, tahun, dan selisih hari dari transaksi dengan tanggal 30 juni 2023 atas semua produk ditransaksikan
SELECT 
nama_produk, tgl_transaksi, MONTH(tgl_transaksi) AS bulan, YEAR(tgl_transaksi) AS tahun, DATEDIFF('2023-06-30', tgl_transaksi)
FROM tr_penjualan_dqlab;

-- no 3
-- tampilkan bulan, nama produk, kategori, dan harga dari produk yang tidak pernah terjual pada bulan mei
SELECT 
'Mei' AS bulan,
mpd.nama_produk,
mpd.kategori_produk,
mpd.harga
FROM ms_produk_dqlab AS mpd
LEFT JOIN tr_penjualan_dqlab AS tp 
ON mpd.kode_produk = tp.kode_produk 
AND MONTH(tp.tgl_transaksi) = 5
WHERE tp.kode_produk IS NULL;

