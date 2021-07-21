CREATE PROCEDURE [dbo].[str_proc_first]
AS
BEGIN

    insert into dbo.test_table_new
    select [test_id], [test_column] 
    from dbo.test_table;
    
END
