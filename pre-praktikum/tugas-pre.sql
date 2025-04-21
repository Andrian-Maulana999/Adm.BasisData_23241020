CREATE DATABASE IF NOT EXISTS apotek;
USE apotek;

-- Tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(255),
    id_nomor_tlp INT,
    id_email INT
);

-- Tabel nomor telepon pelanggan
CREATE TABLE nmr_tlp_plgn (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 INT,
    nomor_2 INT
);

-- Tabel email pelanggan
CREATE TABLE email (
    id_email INT PRIMARY KEY,
    email_1 VARCHAR(100),
    email_2 VARCHAR(100)
);

-- Tabel kategori obat
CREATE TABLE kategori (
    id_kategori INT PRIMARY KEY,
    manfaat VARCHAR(255)
);

-- Tabel supplier
CREATE TABLE supplier (
    id_supplier INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(255),
    id_nomor_tlp INT
);

-- Tabel nomor telepon supplier
CREATE TABLE nmr_tlp_supp (
    id_nomor_tlp INT PRIMARY KEY,
    nomor_1 INT,
    nomor_2 INT
);

-- Tabel obat
CREATE TABLE obat (
    id_obat INT PRIMARY KEY,
    nama VARCHAR(100),
    id_kategori INT,
    jumlah_stok INT,
    tgl_kadaluwarsa DATE,
    id_obat_a INT,
    id_obat_b INT,
    id_pelanggan INT,
    id_supplier INT,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier)
);

-- Tabel relasi antar obat (jika ada komposisi antar dua obat)
CREATE TABLE spr_id_obat (
    id_obat_a INT,
    id_obat_b INT,
    PRIMARY KEY (id_obat_a, id_obat_b)
);
