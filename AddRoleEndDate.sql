
IF NOT EXISTS (
  SELECT *
  FROM   sys.columns
  WHERE  object_id = OBJECT_ID(N'[dbo].[PersonnelUnit]')
         AND name = 'RoleEndDate'
)
BEGIN
ALTER TABLE PersonnelUnit
ADD RoleEndDate datetime NULL;
END