CREATE OR ALTER PROCEDURE spAddProduct
@guid UNIQUEIDENTIFIER,
@name NVARCHAR(MAX),
@sku NVARCHAR(50),
@currency NVARCHAR(5),
@amount DECIMAL,
@description NVARCHAR(MAX),
@image VARBINARY(MAX),
@content_type NVARCHAR(MAX)
AS
BEGIN
	INSERT INTO dbo.products(guid, name, sku,currency, amount, description, image, content_type) VALUES (@guid, @name, @sku, @currency, @amount, @description, @image, @content_type)
END