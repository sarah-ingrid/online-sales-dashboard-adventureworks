USE AdventureWorksDW2014

-- View para sempre que precisar usar dados sobre produtos e categorias. 
	-- Estão separados em cada linha na ordem de relacionamento, para facilitar a inclusão de colunas se necessário.
CREATE OR ALTER VIEW VW_ProdutoCategoria AS
SELECT 
	ProductKey, DimProduct.EnglishProductName,
	Sub.ProductSubcategoryKey, 
	Categ.ProductCategoryKey, Categ.EnglishProductCategoryName
FROM DimProductSubcategory Sub
INNER JOIN DimProduct ON DimProduct.ProductSubcategoryKey = Sub.ProductSubcategoryKey
INNER JOIN DimProductCategory Categ
ON Sub.ProductCategoryKey = Categ.ProductCategoryKey


CREATE OR ALTER VIEW VENDAS_INTERNET AS 
SELECT 
	ISales.SalesOrderNumber AS 'Nº do Pedido',
	OrderDate AS 'Data Pedido',
	YEAR(OrderDate) AS 'Ano da Venda',
	VPC.EnglishProductCategoryName AS 'Categia do Produto',
	FirstName + ' ' + LastName AS 'Nome Cliente',
	Gender AS 'Gênero',
	ST.SalesTerritoryCountry AS 'PAÍS',
	ISales.OrderQuantity AS 'Qtd. Vendida',
	ISales.TotalProductCost AS 'Custo de Venda',
	ISales.SalesAmount AS 'Receita'
FROM FactInternetSales ISales
INNER JOIN DimCustomer 
	ON DimCustomer.CustomerKey = ISales.CustomerKey
INNER JOIN VW_ProdutoCategoria VPC 
	ON ISales.ProductKey = VPC.ProductKey
INNER JOIN DimSalesTerritory ST 
	ON ISales.SalesTerritoryKey = ST.SalesTerritoryKey
WHERE YEAR(OrderDate) IN (2013,2012)


SELECT * FROM VENDAS_INTERNET
