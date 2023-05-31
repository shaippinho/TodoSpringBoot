ALTER TABLE [medicos] ADD [telefone] VARCHAR(20) NULL
GO
UPDATE [medicos] set [telefone] = '000000000000'
GO
ALTER TABLE [medicos] ALTER COLUMN [telefone] VARCHAR(20) NOT NULL
GO
