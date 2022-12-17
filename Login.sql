USE [Northwind]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure Login
@status int out,
@username nvarchar(20),
@password nvarchar(max)
AS
if exists (select * from WebUsers WHERE username=@username AND password=@password)
begin
--If both username and password are correct, return 0 to indicate successful login
set @status = 0
return @status
end
else
begin
--Otherwise, return 1 as error code
set @status = 1
return @status
end
