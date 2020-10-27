select * from customer;

select * from customer where country = 'sweden';

select * from customer order by FirstName;

select * from customer order by FirstName desc;

select * from customer order by FirstName asc;

select distinct Country from supplier order by Country;

select * from customer limit 2 offset 2;

select max(TotalAmount) as tertinggi , min(TotalAmount) as terkecil, avg(TotalAmount) as rata2, sum(TotalAmount) as total, count(Id) as banyak from orders where year(OrderDate)=2019;

select id, firstname, lastname, city, country from customer where FirstName = 'Thomas' and LastName = 'Hardy';

select id, firstname, lastname, city, country from customer where country = 'Spain' or Country = 'France';

select id, productname, unitprice from product where UnitPrice between 10 and 20 order by UnitPrice;

select id, productname, unitprice from product where UnitPrice NOT between 5 and 100 order by UnitPrice;

select id, companyname, phone, fax from supplier where fax is null;

select id, companyname, phone, fax from supplier where fax is not null;

select country, count(id) as jumlah  from customer group by Country;

select country, count(id) as jumlah  from customer group by Country order by count(id) desc;

select sum(O.TotalAmount) as total, C.FirstName, C.LastName from orders O join customer C on O.CustomerId = C.Id group by C.FirstName, C.LastName order by sum(O.TotalAmount) desc;

select concat(FirstName, " ", LastName) as customer_name from customer;