DECLARE @i AS int = 1;
WHILE @i <= 10
BEGIN
    PRINT  'Nu jaevlar: ' + CAST(@i as VARCHAR);
    SET @i = @i + 1
END