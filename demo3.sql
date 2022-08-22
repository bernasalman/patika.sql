/*
Tablo Oluşturmak - CREATE
CREATE TABLE author (
	id SERIAL PRIMARY KEY,   
	first_name VARCHAR(50) NOT NULL,  
	last_name VARCHAR(50) NOT NULL, 
	email VARCHAR(100),
	birthday DATE
);
*/


/*
--Veri Eklemek - INSERT INTO 
INSERT INTO author(first_name, last_name, email, birthday)  
VALUES
	('Berna', 'Salman', 'berna@gmail.com', '2000-11-08'),
	('Sabahattin', 'Ali', 'sabahattin@gmail.com', '1914-11-11'),
	('Orhan', 'Pamuk', 'orhan@gmail.com', '1950-04-14'),
	('Halide Edip', 'Adıvar', 'halide@gmail.com', '1884-07-11');
*/

--CREATE TABLE author2(LIKE author); --yeni tablo yaratırken örnek alınan tablonun sutunlarıda yaratılır

/*
--ikinci tabloya, birinci tablodan sadece seçilen veriyi kopyalayıp ekleme 
INSERT INTO author2
SELECT * FROM author
WHERE first_name = 'Sabahattin';
*/

/*
--yeni tablo yaratırken örnek alınan tablonun sutunlarıyla birlikte verilerinide yaratır
CREATE TABLE author3 AS
SELECT * FROM author;
*/


/* Tablo Verilerini Güncellemek - UPDATE 
--id=10 olan verinin bütün sutunlarını güncelledik (güncellenen veri tablonun sonuna )
UPDATE author
SET first_name = 'Ali',
	last_name = 'Yılmaz',
	email = 'ali@gmail.com',
	birthday = '1978-09-10'
WHERE id = 10;
--*/

/*
--baş herfi  v ile başlayanları günvcelle
UPDATE author
SET first_name = 'xxx',
	last_name = 'yyy'
WHERE first_name LIKE 'V%';
*/

/*
-- adı verilen verinin soyadını update edip görüntüleme
UPDATE author
SET last_name = 'UPDATE'
WHERE first_name = 'Orhan'
RETURNING *;
*/

--Verilerini Silmek - DELETE
--idisi 3ten küçük olanları siler
DELETE FROM author
WHERE id<3;










