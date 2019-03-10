-- Create a new stored procedure called 'StoredProcedureName' in schema 'SchemaName'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'uspAddNumber'
)
DROP PROCEDURE dbo.uspAddNumber
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.uspAddNumber
    @a /*parameter name*/ float /*datatype_for_param1*/ = 0.00, /*default_value_for_param1*/
    @b /*parameter name*/ float /*datatype_for_param1*/ = 0.00 /*default_value_for_param2*/
-- add more stored procedure parameters here
AS
    -- body of the stored procedure
    -- SELECT @a, @b
    BEGIN
	-- SET NOCOUNT ON to prevent output
	SET NOCOUNT ON;
	-- Insert statements for procedure
	SELECT @a + @b
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.uspAddNumber 5.0 /*value_for_param1*/, 15.00 /*value_for_param2*/
GO