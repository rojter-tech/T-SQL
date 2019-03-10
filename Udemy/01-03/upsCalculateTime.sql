-- Create a new stored procedure called 'StoredProcedureName' in schema 'SchemaName'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'uspCalculateTime'
)
DROP PROCEDURE dbo.uspCalculateTime
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.uspCalculateTime
    @distance /*parameter name*/ float /*datatype_for_param1*/ = 0.00, /*default_value_for_param1*/
    @velocity /*parameter name*/ float /*datatype_for_param1*/ = 0.00 /*default_value_for_param2*/
-- add more stored procedure parameters here
AS
    -- body of the stored procedure
    -- SELECT @distance, @velocity
    BEGIN
	-- SET NOCOUNT ON to prevent output
	SET NOCOUNT ON;
	-- Insert statements for procedure
	IF (@velocity <> 0.00)
		SELECT @distance / @velocity
	ELSE
		SELECT 0.00
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.uspCalculateTime 120.00 /*value_for_param1*/, 1.00 /*value_for_param2*/
GO