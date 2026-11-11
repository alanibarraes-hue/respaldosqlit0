CREATE TABLE [dbo].[tutores] (
    [tutor_id] INT           IDENTITY (1, 1) NOT NULL,
    [nombre]   VARCHAR (100) NOT NULL,
    [puesto]   VARCHAR (50)  NOT NULL,
    [telefono] VARCHAR (15)  NULL,
    CONSTRAINT [pk_tutores] PRIMARY KEY CLUSTERED ([tutor_id] ASC)
);


GO

