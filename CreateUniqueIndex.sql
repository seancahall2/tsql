DROP INDEX IF EXISTS Personnel.UQ_LawSchoolUniqueEID
CREATE UNIQUE INDEX UQ_LawSchoolUniqueEID
ON dbo.Personnel (UWEmpNo)
WHERE (UWEmpNo IS NOT NULL);
GO