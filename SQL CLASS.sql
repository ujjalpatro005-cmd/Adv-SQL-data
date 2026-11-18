--ceate the data table for distributer to supply products accros diff city--
--ID , NAME , CITY, REEGION, CONTACT NUMBER--
create table distributers(
  distributer_id integer PRIMARY key,
  name text not NULL,
  city text,
  region text,
  phone text
  );
  select*from distributers;
 DROP TABLE if EXISTS distributers;
 CREATE table products(
   product_id integer PRIMARY KEY,
   product_name text NOT NULL UNIQUE ,
   brand text,
   category text,
   price decimal(10,0) CHECK (price>0),
   stock integer
   );
   
  SELECT*from distributers;
  --creat a table number sale contain sale_id , distributer_id,sale date , quantity,amount--
  CREATE TABLE sales(
    sale_id integer primary key,
    distributer_id integer,
    product_id integer,
    sales_date date,
    quantity integer CHECK(quantity>0),
    amount integer,
    FOREIGN KEY (distributer_id) REFERENCES distributers(distributer_id),
    FOREIGN key (product_id) REFERENCES products(product_id)
    );
      SELECT*from sales;
      pragma table_info(distributers);
      pragma table_info(products);
      
      INSERT into products(
        product_id,product_name,brand,category,price,stock)
        VALUES
        (1,'Aashirvaad Atta','Aashirvaad','Staples',265,120),
        (2,'Aashirvaad Salt','Aashirvaad','Staples',20,300),