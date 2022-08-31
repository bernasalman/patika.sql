----------PRIMARY KEY - FOREIGN KEY---------
/*
CREATE TABLE book(
	id SERIAL PRIMARY KEY, --tablo içi pk
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL,
	author_id INTEGER REFERENCES author(id) --author tablosuyla bağlantılı fk
)
*/

/*
-- örnek veriler
insert into book (title, page_number, author_id) values ('Melva', 222, 4);
insert into book (title, page_number, author_id) values ('Diahann', 81, 7);
insert into book (title, page_number, author_id) values ('Britt', 820, 8);
insert into book (title, page_number, author_id) values ('Micaela', 84, 9);
insert into book (title, page_number, author_id) values ('Faustina', 438, 10);
insert into book (title, page_number, author_id) values ('Consuelo', 700, 11);
insert into book (title, page_number, author_id) values ('Christiane', 883, 12);
insert into book (title, page_number, author_id) values ('Hadria', 595, 13);
insert into book (title, page_number, author_id) values ('Lynnett', 490, 14);
insert into book (title, page_number, author_id) values ('Baird', 403, 15);
insert into book (title, page_number, author_id) values ('Rorie', 816, 10);
insert into book (title, page_number, author_id) values ('Oberon', 232, 3);
insert into book (title, page_number, author_id) values ('Glenden', 784, 3);
insert into book (title, page_number, author_id) values ('Jaquith', 593, 19);
insert into book (title, page_number, author_id) values ('Marrissa', 781, 20);
insert into book (title, page_number, author_id) values ('Elnora', 807, 21);
insert into book (title, page_number, author_id) values ('Aurora', 196, 22);
insert into book (title, page_number, author_id) values ('Kristos', 842, 3);
insert into book (title, page_number, author_id) values ('Peterus', 467, 24);
insert into book (title, page_number, author_id) values ('Drucy', 461, 25);
insert into book (title, page_number, author_id) values ('Aguie', 180, 26);
insert into book (title, page_number, author_id) values ('Natalya', 73, 27);
insert into book (title, page_number, author_id) values ('Gayla', 232, 28);
insert into book (title, page_number, author_id) values ('Hilly', 90, 29);
fall 
*/


--SELECT * FROM book WHERE author_id = 3 -- authoridsi= 3 olan kitapları getirir

SELECT * FROM book JOIN author ON author.id = book.author_id;  --kitapların yazar bilgisini görmek için author tablosuyla birleştirme yapıldı


