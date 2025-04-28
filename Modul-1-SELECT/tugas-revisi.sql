-- Menambahkan data ke tabel nomor telepon pelanggan
INSERT INTO nmr_tlp_plgn (id_nomor_tlp, nomor_1, nomor_2) VALUES
(1, 81234567, 87654321),
(2, 82345678, 88765432),
(3, 83456789, 89876543),
(4, 84567890, 80987654),
(5, 85678901, 81098765),
(6, 86789012, 82109876),
(7, 87890123, 83210987),
(8, 88901234, 84321098),
(9, 89012345, 85432109),
(10, 80123456, 86543210);

-- Menambahkan data ke tabel email pelanggan
INSERT INTO email (id_email, email_1, email_2) VALUES
(1, 'dewi.susanti@email.com', 'dewi_personal@email.com'),
(2, 'ratna.p@email.com', 'ratna_business@email.com'),
(3, 'fiona.a@email.com', 'fiona_work@email.com'),
(4, 'jessica.l@email.com', 'jessica_contact@email.com'),
(5, 'tiara.dewi@email.com', 'tiara_alt@email.com'),
(6, 'siska.r@email.com', 'siska_family@email.com'),
(7, 'lina.w@email.com', 'lina_official@email.com'),
(8, 'anita.p@email.com', 'anita_shop@email.com'),
(9, 'felicia.t@email.com', 'felicia_private@email.com'),
(10, 'dina.m@email.com', 'dina_business@email.com');

-- Menambahkan data ke tabel pelanggan
INSERT INTO pelanggan (id_pelanggan, nama, alamat, id_nomor_tlp, id_email) VALUES
(1, 'Dewi Susanti', 'Jl. Mawar No. 23, Jakarta Selatan', 1, 1),
(2, 'Ratna Permata', 'Perumahan Indah Blok B4, Bandung', 2, 2),
(3, 'Fiona Anggraini', 'Jl. Kenanga No. 7, Surabaya', 3, 3),
(4, 'Jessica Larasati', 'Apartemen Skyline Tower, Unit 12D, Jakarta', 4, 4),
(5, 'Tiara Dewi', 'Jl. Dahlia No. 45, Yogyakarta', 5, 5),
(6, 'Siska Ramadhani', 'Perumahan Bukit Indah, Blok C3, Makassar', 6, 6),
(7, 'Lina Wulandari', 'Jl. Anggrek No. 56, Semarang', 7, 7),
(8, 'Anita Pratiwi', 'Komplek Bintang Asri, Blok D8, Medan', 8, 8),
(9, 'Felicia Tanoto', 'Jl. Melati No. 12, Denpasar', 9, 9),
(10, 'Dina Maryati', 'Perumahan Cempaka, Blok A2 No. 5, Palembang', 10, 10);

-- Menambahkan data ke tabel nomor telepon supplier
INSERT INTO nmr_tlp_supp (id_nomor_tlp, nomor_1, nomor_2) VALUES
(101, 2122334455, 2122334466),
(102, 2233445566, 2233445577),
(103, 2344556677, 2344556688),
(104, 2455667788, 2455667799),
(105, 2566778899, 2566778800);

-- Menambahkan data ke tabel supplier
INSERT INTO supplier (id_supplier, nama, alamat, id_nomor_tlp) VALUES
(1, 'PT Farmasi Utama', 'Jl. Industri No. 123, Jakarta', 101),
(2, 'CV Medika Jaya', 'Jl. Kesehatan No. 45, Bandung', 102),
(3, 'PT Obat Sehat', 'Jl. Farmasi No. 67, Surabaya', 103),
(4, 'CV Apotek Sejahtera', 'Jl. Apoteker No. 89, Medan', 104),
(5, 'PT Bahan Kimia Medis', 'Jl. Laboratorium No. 12, Makassar', 105);

-- Menambahkan data ke tabel kategori obat
INSERT INTO kategori (id_kategori, manfaat) VALUES
(1, 'Analgesik - Pereda Nyeri'),
(2, 'Antibiotik - Mengatasi Infeksi Bakteri'),
(3, 'Vitamin dan Suplemen - Meningkatkan Daya Tahan Tubuh'),
(4, 'Obat Saluran Pencernaan'),
(5, 'Antihistamin - Mengatasi Alergi'),
(6, 'Obat Batuk dan Pilek'),
(7, 'Anti-inflamasi'),
(8, 'Obat Khusus');

-- Menambahkan data ke tabel pasangan obat kombinasi
INSERT INTO spr_id_obat (id_obat_a, id_obat_b) VALUES
(1, 2),
(1, 3),
(2, 3),
(4, 5),
(6, 7),
(8, 9),
(10, 11),
(12, 13),
(14, 15),
(16, 17);

-- Menambahkan data ke tabel obat
INSERT INTO obat (id_obat, nama, id_kategori, jumlah_stok, tgl_kadaluarsa, id_obat_a, id_obat_b, id_pelanggan, id_supplier) VALUES
(1, 'Paracetamol 500mg', 1, 500, '2025-06-30', 1, 2, 3, 1),
(2, 'Amoxicillin 250mg', 2, 300, '2025-05-15', 1, 3, 5, 2),
(3, 'Vitamin C 1000mg', 3, 450, '2026-02-28', 2, 3, 1, 3),
(4, 'Antacid Tablet', 4, 250, '2025-08-10', 4, 5, 9, 4),
(5, 'Antihistamine Syrup', 5, 150, '2025-04-22', 4, 5, 9, 5),
(6, 'Dextromethorphan Syrup', 6, 180, '2025-07-18', 6, 7, 2, 1),
(7, 'Ibuprofen 400mg', 7, 350, '2025-09-05', 6, 7, 7, 2),
(8, 'Omeprazole 20mg', 8, 220, '2026-01-15', 8, 9, 4, 3),
(9, 'Multivitamin Tablet', 3, 400, '2026-03-25', 8, 9, 8, 4),
(10, 'Antidiabetic Tablet', 1, 120, '2025-12-30', 10, 11, 6, 5),
(11, 'Blood Pressure Medicine', 2, 180, '2025-11-20', 10, 11, 10, 1),
(12, 'Probiotics Capsule', 3, 300, '2026-04-10', 12, 13, 3, 2),
(13, 'Pain Relief Cream', 4, 100, '2025-10-05', 12, 13, 1, 3),
(14, 'Cough Syrup', 5, 150, '2025-08-22', 14, 15, 5, 4),
(15, 'Eye Drops', 6, 80, '2025-06-15', 14, 15, 9, 5),
(16, 'Anti-inflammatory Gel', 7, 120, '2025-09-30', 16, 17, 2, 1),
(17, 'Throat Lozenges', 8, 250, '2025-07-25', 16, 17, 7, 2),
(18, 'Calcium Supplement', 3, 300, '2026-05-12', NULL, NULL, 4, 3),
(19, 'Iron Supplement', 3, 280, '2026-04-20', NULL, NULL, 8, 4),
(20, 'Antibiotic Ointment', 4, 90, '2025-11-15', NULL, NULL, 6, 5);

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

