create function calculatetax(@amount float)
returns float
as
begin
	declare @tax float =@amount*0.18;
	return @tax;
end
select *,dbo.calculatetax(price)as tax from products

create function calculatenetamount(@amt float)
returns float
as 
begin
	declare @newtax float=dbo.calculatetax(@amt) 
	
	declare @net float=@amt+@newtax
	return @net
end
select*,dbo.calculatetax(price)as tax,dbo.calculatenetamount(price)as net from products