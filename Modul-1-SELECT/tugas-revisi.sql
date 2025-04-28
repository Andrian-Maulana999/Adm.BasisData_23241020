-- Mengecek data dari seluruh tabel
SELECT * FROM pelanggan;
SELECT * FROM nmr_tlp_plgn;
SELECT * FROM email;
SELECT * FROM supplier;
SELECT * FROM nmr_tlp_supp;
SELECT * FROM kategori;
SELECT * FROM spr_id_obat;
SELECT * FROM obat;

-- menggunakan SELECT statement untuk mengambil data dari tabel
-- SELECT Statement untuk mengambil 1 kolom menggunakan alias dan prefix
SELECT em.email_1 as em1 FROM email as em;
SELECT ktg.manfaat as mnft FROM kategori as ktg;
SELECT NmrTlpPlg.nomor_1 as nmr1 FROM nmr_tlp_plgn as NmrTlpPlg;
SELECT NmrTlpSupp.nomor_2 as nmr2 FROM nmr_tlp_supp as NmrTlpSupp;
SELECT obt.nama as nma FROM obat as obt;
SELECT plgn.alamat as almt FROM pelanggan as plgn;
SELECT SprIdObt.id_obat_a as IdObtA FROM spr_id_obat as SprIdObt;
SELECT Supp.nama as nmaa FROM supplier as Supp;

-- SELECT Statement untuk mengambil 2 kolom menggunakan alias dan prefix
SELECT em.id_email as idem, email_2 as em2 FROM email as em;
SELECT ktg.id_kategori as idktg, manfaat as mnft FROM kategori as ktg;
SELECT nmrtlpplg.id_nomor_tlp as idnmrtlp, nomor_1 as nmr1 FROM nmr_tlp_plgn as nmrtlpplg;
SELECT nmrtlpsup.id_nomor_tlp as idnmrTlpn, nomor_2 as nmr2 FROM nmr_tlp_supp as nmrtlpsup;
SELECT obt.nama as nma, jumlah_stok as jmlhstk FROM obat as obt;
SELECT plgn.nama as nma, alamat as alt FROM pelanggan as plgn;
SELECT spridobt.id_obat_a as idobtA, id_obat_b as idobtB FROM spr_id_obat as spridobt;
SELECT supp.nama as nma, alamat as alt FROM supplier as supp;

