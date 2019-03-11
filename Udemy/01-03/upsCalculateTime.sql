IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'uspCalculateTime'
)
DROP PROCEDURE dbo.uspCalculateTime
GO

CREATE PROCEDURE dbo.uspCalculateTime
    @distance float = 0.00,
    @velocity float = 0.00
AS
    BEGIN
	-- SET NOCOUNT ON to prevent output
	SET NOCOUNT ON;
	IF (@velocity <> 0.00)
		SELECT @distance / @velocity
	ELSE
		SELECT 0.00
END
GO

EXECUTE dbo.uspCalculateTime 30, 70.00
GO