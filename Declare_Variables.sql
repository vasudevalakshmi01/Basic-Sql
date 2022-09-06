BEGIN
DECLARE @ID int=10;
declare @TQTY int=2;
declare @customerid int=101
DECLARE @PRICE FLOAT
SET @PRICE = (SELECT PRICE FROM Products WHERE ID= @ID)
DECLARE @AMOUNT FLOAT=(@PRICE*@TQTY)
IF(@AMOUNT IS NOT NULL)
	BEGIN--{
INSERT INTO ORDERS(CUSTOMERID,PRODUCTID,QTY,AMOUNT,DELIVERYSTATUS)
          VALUES(@customerid,@id,@TQTY,@AMOUNT,'PENDING');


PRINT SCOPE_IDENTITY();
END--}
ELSE
	BEGIN
		PRINT 'PLEASE CHECK THE PRODUCT ID'
	END
SELECT * FROM products


declare @id int = 102;  
declare @availablestock int= (select TOTAL_STOCK from products where id = @id);
declare @stock int = 500;
print @availablestock
print @stock
if(@stock <= @availablestock)    
	begin       
		print 'available'        
		Declare @new int= (@availablestock- @stock)
		update Products set TOTAL_STOCK=@new where id=@id
 PRINT SCOPE_IDENTITY();
 begin try 


end
else   
	begin      
	print'OUT OF STOCK'  
end







