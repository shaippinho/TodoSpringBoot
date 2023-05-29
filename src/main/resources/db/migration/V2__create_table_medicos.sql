IF NOT EXISTS (	SELECT 'TRUE'
				FROM SYS.TABLES A
				WHERE
					A.[NAME] = 'medicos' )
BEGIN

	CREATE TABLE [medicos]
	(
		[id]						INT						NOT NULL	IDENTITY( 1, 1 )			,
		[nome]			    		VARCHAR(100)			NOT NULL								,
		[email]                     VARCHAR(100)            NOT NULL                                ,
		[crm]                       VARCHAR(6)              NOT NULL                                ,
		[especialidade]             VARCHAR(100)            NOT NULL                                ,
		[logradouro]                VARCHAR(100)            NOT NULL                                ,
		[bairro]                    VARCHAR(100)            NOT NULL                                ,
		[cep]                       VARCHAR(9)              NOT NULL                                ,
		[complemento]               VARCHAR(100)            NULL                                    ,
		[numero]                    VARCHAR(20)             NULL                                    ,
		[uf]                        VARCHAR(2)              NOT NULL                                ,
		[cidade]					VARCHAR(100)	    	NOT NULL								,
		[CreateDate]				DATETIME				NOT NULL
	)

    ALTER TABLE [medicos] ADD CONSTRAINT [medicos_PK]	PRIMARY KEY ( [id] )

END

GO

IF NOT EXISTS ( SELECT 'TRUE'
				FROM SYS.INDEXES A
				WHERE
					A.NAME = 'medicos_email_UX' )
BEGIN

	CREATE UNIQUE INDEX [medicos_email_UX] ON [medicos] ( [email] )

END

GO

IF NOT EXISTS ( SELECT 'TRUE'
				FROM SYS.INDEXES A
				WHERE
					A.NAME = 'medicos_crm_UX' )
BEGIN

	CREATE UNIQUE INDEX [medicos_crm_UX] ON [medicos] ( [crm] )

END