--Q1--
select p.ProductName,p.QuantityPerUnit  from Products p

--Q2--
select p.ProductID,p.ProductName from Products p
where Discontinued='false'

--Q3--
select p.ProductID,p.ProductName from Products p
where Discontinued='true'

--Q4--
select p.ProductName,p.UnitPrice from Products p
order by UnitPrice desc

--Q5--
select p.ProductID,p.ProductName,p.UnitPrice from Products p
where Discontinued='false' and UnitPrice<20

--Q6--
select p.ProductID,p.ProductName,p.UnitPrice from Products p
where UnitPrice>15 and UnitPrice<25

--Q7--
SELECT DISTINCT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT avg(UnitPrice) FROM Products)

--Q8--
SELECT DISTINCT ProductName[top ten expensive products], UnitPrice
FROM Products AS p
WHERE 10 >= (SELECT COUNT(DISTINCT UnitPrice)
                    FROM Products AS pr
                    WHERE pr.UnitPrice >= p.UnitPrice)
ORDER BY UnitPrice desc

--Q9--
select COUNT(ProductName)[count] from Products
group by Discontinued

--Q10--
select ProductName,UnitsOnOrder,UnitsInStock from Products
where Discontinued='false' and UnitsInStock<UnitsOnOrder 