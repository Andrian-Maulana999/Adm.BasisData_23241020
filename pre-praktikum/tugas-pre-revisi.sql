-- Membuat database apotek jika belum ada
CREATE DATABASE IF NOT EXISTS apotek;
USE apotek;

-- Membuat tabel nomor telepon pelanggan
CREATE TABLE nmr_tlp_plgn (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 INT,
    nomor_2 INT
);

-- Membuat tabel email pelanggan
CREATE TABLE email (
    id_email INT PRIMARY KEY,
    email_1 VARCHAR(255),
    email_2 VARCHAR(255)
);

-- Membuat tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(255),
    alamat VARCHAR(255),
    id_nomor_tlp INT,
    id_email INT,
    FOREIGN KEY (id_nomor_tlp) REFERENCES nmr_tlp_plgn(id_nomor_tlp),
    FOREIGN KEY (id_email) REFERENCES email(id_email)
);

-- Membuat tabel nomor telepon supplier
CREATE TABLE nmr_tlp_supp (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 INT,
    nomor_2 INT
);

-- Membuat tabel supplier
CREATE TABLE supplier (
    id_supplier INT PRIMARY KEY,
    nama VARCHAR(255),
    alamat VARCHAR(255),
    id_nomor_tlp INT,
    FOREIGN KEY (id_nomor_tlp) REFERENCES nmr_tlp_supp(id_nomor_tlp)
);

-- Membuat tabel kategori obat
CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY,
    manfaat VARCHAR(255)
);

-- Membuat tabel relasi pasangan kombinasi obat
CREATE TABLE spr_id_obat (
    id_obat_a INT,
    id_obat_b INT,
    PRIMARY KEY (id_obat_a, id_obat_b)
);

-- Membuat tabel obat
CREATE TABLE obat (
    id_obat INT PRIMARY KEY,
    nama VARCHAR(255),
    id_kategori INT,
    jumlah_stok INT,
    tgl_kadaluarsa DATE,
    id_obat_a INT,
    id_obat_b INT,
    id_pelanggan INT,
    id_supplier INT,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
    FOREIGN KEY (id_obat_a, id_obat_b) REFERENCES spr_id_obat(id_obat_a, id_obat_b),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier)
);