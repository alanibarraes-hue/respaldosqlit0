CREATE TABLE [dbo].[materias] (
    [materia_id]    INT           IDENTITY (1, 1) NOT NULL,
    [clave_materia] VARCHAR (10)  NOT NULL,
    [nombre]        VARCHAR (100) NOT NULL,
    [creditos]      TINYINT       NOT NULL,
    CONSTRAINT [pk_materia] PRIMARY KEY CLUSTERED ([materia_id] ASC),
    CONSTRAINT [chk_materias_creditos] CHECK ([creditos]>(0)),
    CONSTRAINT [uq_materias_clave] UNIQUE NONCLUSTERED ([clave_materia] ASC)
);


GO

