create database BooksDB;
use BooksDB;
create table Books(Author varchar(30) primary key, Book_title varchar(100), Genre varchar(100), Publication_year int, price int); 
INSERT INTO Books VALUES 
  ('Harper Lee', 'To Kill a Mockingbird', 'Fiction', 1960, 1299),
  ('George Orwell', '1984', 'Dystopian', 1949, 999),
  ('F. Scott Fitzgerald', 'The Great Gatsby', 'Classics', 1925, 1099),
  ('J.R.R. Tolkien', 'The Hobbit', 'Fantasy', 1937, 1499),
  ('Jane Austen', 'Pride and Prejudice', 'Romance', 1813, 899);
select * from Books;

--- retrieve all the books from the database
select * from Books;

-- retrieve the details of a book based on title
select * from Books where Book_title = "The Hobbit";

--- update the price of a book
update Books set price=1300 where Price=999;
update Books set price=1000 where Book_title="The Hobbit";

--- delete a book from the database based on its title
delete from Books where Book_title="To Kill a Mockingbird";

--- calculate and display the average price of all the books in the database
SELECT SUM(price) / COUNT(*) AS average_price FROM books;

--- create a new table Authors and insert values
CREATE TABLE Authors ( Author VARCHAR(100), Author_id int, Author_DOB date , Place_of_Birth varchar(100));
 INSERT INTO Authors VALUES 
  ('Harper Lee', 1, '1984-12-10', 'Moscow'),
  ('George Orwell', 2, '1990-05-15', 'Italy'),
  ('F. Scott Fitzgerald', 3, '1978-05-04', 'France'),
  ('J.R.R. Tolkien', 4, '1989-05-07', 'London'),
  ('Jane Austen', 5, '1986-04-02', 'Germany'); 
  
  select * from Authors;

-- Retrieve books along with their respective authors using inner joins
select Books.Author, Books.Book_title, Author_id, place_of_birth from books inner join Authors
on Books.Author=Authors.Author;

--- Retrieve books along with their respective authors using left joins
select Books.Author, Books.Book_title, Author_id, place_of_birth from books left join Authors
on Books.Author=Authors.Author;

--- Retrieve books along with their respective authors using right joins
select Books.Author, Books.Book_title, Author_id, place_of_birth from books right join Authors
on Books.Author=Authors.Author;
