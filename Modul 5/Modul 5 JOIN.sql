-- Nama : Andrian Maulana
-- Nim : 23241020
-- Kelas : A - 4
-- Modul 5: JOIN

USE pti_mart;

-- praktik 1
-- join
-- mengambil semua pelanggan yang sudah transaksi termasuk qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan
group by tp.kode_pelanggan
having tp.qty < 4;

-- praktek 2
-- menggabungkan 2 tabel tanpa memperhatikan relasi keys
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on true;

-- praktek 3
-- inner join
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
inner join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 4
-- left join
-- join yang mengambil seluruh data pada sisi tabel sebelah kiri
-- dan hanya mengambil sebagian data pada sisi tabel kanan
-- left outer join
-- ambil semua nama pelanggan 
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
left join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 5
-- right outer join
-- join yang mengambil seluruh data pada sisi tabel sebelah kanan
-- tabel sebelah kiri hanya mengambil yang relasi
-- ambil semua pelanggan yang..
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
right join ms_pelanggan_dqlab as mp
on mp.kode_pelanggan = tp.kode_pelanggan;
-- ambil semua pelanggan yang tidak pernah transaksi
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
right join ms_pelanggan_dqlab as mp
on mp.kode_pelanggan = tp.kode_pelanggan
where tp.qty is null;

-- praktek 6 
-- left outer join untuk 3 tabel
-- ambil kategori produk dan nama produk yang dibeli oleh pelanggan 
-- tapi tampilkan pelanggan beserta namanya
select 
tp.kode_pelanggan, 
mp.nama_pelanggan, 
mpd.kategori_produk, 
tp.nama_produk, 
sum(tp.qty) as jumlah_terjual
from ms_pelanggan_dqlab as mp
left join tr_penjualan_dqlab as tp
on mp.kode_pelanggan = tp.kode_pelanggan
left join ms_produk_dqlab as mpd
on mpd.kode_produk = tp.kode_produk
where tp.kode_pelanggan is not null
group by tp.kode_pelanggan, mpd.kategori_produk
having sum(tp.qty) > 4
order by sum(tp.qty) desc;




