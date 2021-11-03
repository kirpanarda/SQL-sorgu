CREATE DATABASE db_sirket
USE db_sirket

CREATE TABLE tbl_birimler(
birim_id_pk int primary key identity,
birim_adi varchar(50)
)

CREATE TABLE tbl_bilgisayarlar(
bilgisayar_id_pk int primary key identity,
bilgisayar_mac_adres varchar(25) unique,
bilgisayar_ekran_karti varchar(35), 
bilgisayar_islemci VARCHAR(20),
bilgisayar_ram_miktari INT CHECK(bilgisayar_ram_miktari >= 4),
)

CREATE TABLE tbl_elemanlar(
eleman_id_pk int primary key identity,
eleman_adi varchar(25) NOT NULL,
eleman_soyadi varchar(25) NOT NULL,
eleman_maasi decimal(7,3) CHECK(eleman_maasi >= 500),
eleman_tel varchar(11),
eleman_pc int foreign key references tbl_bilgisayarlar(bilgisayar_id_pk),
eleman_birim_fk int foreign key references tbl_birimler(birim_id_pk)
) 

INSERT INTO tbl_birimler VALUES ('Siber Güvenlik')
INSERT INTO tbl_birimler VALUES ('Veri Tabaný')
INSERT INTO tbl_birimler VALUES ('Að Ýþletmenliði')
INSERT INTO tbl_birimler VALUES ('Yazýlým Muhendisliði')
INSERT INTO tbl_birimler VALUES ('Web Programcýlýðý')
INSERT INTO tbl_birimler VALUES ('Oyun Geliþtirme')
INSERT INTO tbl_birimler VALUES ('Yapay Zeka')
INSERT INTO tbl_birimler VALUES ('Makine Öðrenimi')
INSERT INTO tbl_birimler VALUES ('Robotik Kodlama')
INSERT INTO tbl_birimler VALUES ('Bilgisayar Sistemleri Yöneticisi')

INSERT INTO tbl_bilgisayarlar VALUES('1a-7s-2j-12u-er-6q','rx 560','intel i3',8)
INSERT INTO tbl_bilgisayarlar VALUES('2w-6g-7m-8z-9q-1f','rtx 2060','intel i5',4)
INSERT INTO tbl_bilgisayarlar VALUES('3f-31-5n-1l-dw-11','rtx 3080','Ryzen 3', 6)
INSERT INTO tbl_bilgisayarlar VALUES('9a-04-33-2c-8a-22','rx 570 ','Ryzen 3', 7)
INSERT INTO tbl_bilgisayarlar VALUES('78-h7-90-0a-2c-63','rtx 3060ti','intel i3', 4)
INSERT INTO tbl_bilgisayarlar VALUES('4b-65-j3-a3-2u-31','rx 2060','intel i5', 8)
INSERT INTO tbl_bilgisayarlar VALUES('6f-17-0a-43-39-f9','rx 2070ti','intel i7', 12) 
INSERT INTO tbl_bilgisayarlar VALUES('5b-45-12-de-6d-35','rx 2080','intel i9', 12)
INSERT INTO tbl_bilgisayarlar VALUES('f4-3j-h7-20-02-0g','gtx1080ti','Ryzen Threadripper 2', 32)
INSERT INTO tbl_bilgisayarlar VALUES('5f-3h-11-2f-54-12','GT 1050ti','Ryzen Threadripper 1', 24)

INSERT INTO tbl_elemanlar VALUES('abdullah','almasri',1500.00,'05664324562',1,1)
INSERT INTO tbl_elemanlar VALUES('arda','kirpan',9500.50,'05111111111',2,2)
INSERT INTO tbl_elemanlar VALUES('mesut','özil',530.99,'05222222222',3,3)
INSERT INTO tbl_elemanlar VALUES('mehmet','sevinç',2300.2,'05555555555',4,4)
INSERT INTO tbl_elemanlar VALUES('onur','yýlmaz',1000.22,'059999999',5,5) 
INSERT INTO tbl_elemanlar VALUES('ahmet','yusuf',6200.09,'05444444444',6,6)
INSERT INTO tbl_elemanlar VALUES('samet','kara',3000.88,'03333333333',7,7) 
INSERT INTO tbl_elemanlar VALUES('emre','Demir',9111.14,'05777777777',8,8)
INSERT INTO tbl_elemanlar VALUES('enes','deniz',6800,'05345678231',9,9)
INSERT INTO tbl_elemanlar VALUES('emre','çakmak',1311.04,'05909879955',10,10)


SELECT * FROM tbl_elemanlar
SELECT * FROM tbl_birimler
SELECT * FROM tbl_bilgisayarlar 
SELECT bilgisayar_ekran_karti,bilgisayar_islemci FROM tbl_bilgisayarlar
SELECT eleman_adi,eleman_soyadi,eleman_tel FROM tbl_elemanlar 

UPDATE tbl_elemanlar SET eleman_maasi = eleman_maasi + (eleman_maasi * 0.05) WHERE eleman_maasi < 5000;  
UPDATE tbl_elemanlar SET eleman_soyadi = 'yalçýntürk' WHERE eleman_soyadi = 'yýlmaz' 
UPDATE tbl_birimler SET birim_adi = 'Veri Tabaný Muhendisliði' WHERE birim_adi = 'Veri Tabaný'
UPDATE tbl_elemanlar SET eleman_maasi = 1500.55 WHERE eleman_id_pk = 2 
UPDATE tbl_bilgisayarlar SET bilgisayar_ekran_karti = 'RTX 3080TI' WHERE bilgisayar_ekran_karti = 'rx 560'

DELETE FROM tbl_elemanlar WHERE eleman_maasi < 4000
DELETE FROM tbl_elemanlar WHERE eleman_adi = 'emre'
DELETE FROM tbl_bilgisayarlar WHERE bilgisayar_ram_miktari < 10
DELETE FROM tbl_birimler WHERE birim_id_pk = 10
DELETE FROM tbl_bilgisayarlar WHERE bilgisayar_islemci = 'Ryzen 3' 

