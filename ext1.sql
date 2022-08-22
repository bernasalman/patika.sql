
CREATE TABLE Vegetable (
  id SERIAL NOT NULL,
  kod VARCHAR(10) NOT NULL, 
  name TEXT NOT NULL
);

insert into Vegetable (
    kod, name
)
select
    left(md5(i::text), 10),
    md5(random()::text)
from generate_series(1, 100) s(i)
