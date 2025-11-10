/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
/*:r .\clean.sql
:r .\.author.sql
:r .\.publisher.sql
:r .\.book_language.sql
:r .\.book.sql
:r .\.book_author.sql
:r .\.country.sql
:r .\.address.sql
:r .\.customer.sql
:r .\.shipping_method.sql
:r .\.cust_order.sql
:r .\.order_line.sql
:r .\.address_status.sql
:r .\.customer_address.sql
:r .\.order_status.sql
:r .\.order_history.sql*/