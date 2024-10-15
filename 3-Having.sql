--Having
--Sql sorguları içerisinde tablolarda bulunan verileri where ifadesi ile sorgulama işlemini yapabiliyoruz
--Fakat hazır fonksiyonlar aracılığı ile hesaplanmış verileri ram üzerinde hesaplanan soyur değerler olduğundan dolayı bu değerleri filtreleme işlemlerini where ifadesi ile yapamıyoruz
--Ram üzerinden hesaplanan verileri filtrelemek için Having ifadesi kullanılmamız gerekmektedir

--Not :Having ifadesi GroupBy ifadesi var is sonrasında kullanılmalıdır

--Syntax
--Select <hazirmetod'lar>() from <tablo> having<hazirmetod> <koşul>

--Örnek
--Hangi ürünümden toplam kaç adet satın alınmış
--Satılan ürünlerden toplam 500 ve üzeri olanları listeleyelim
--Ürün adı ve adet bilgisi olarak
select 
	(
		Select
			ProductName
		from  Products
		where Products.ProductID=od.ProductID

	),
	sum(od.Quantity) as Amount

from [Order Details] as od
group by od.ProductID
having 
sum(od.Quantity)>=500
order by Amount asc