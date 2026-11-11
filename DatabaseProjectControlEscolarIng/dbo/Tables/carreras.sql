CREATE TABLE [dbo].[carreras] (
    [carrera_id]  VARCHAR (10)  NOT NULL,
    [nombre]      VARCHAR (120) NOT NULL,
    [edificio]    VARCHAR (50)  NOT NULL,
    [coordinador] VARCHAR (100) NOT NULL,
    CONSTRAINT [pk_carreras] PRIMARY KEY CLUSTERED ([carrera_id] ASC)
);


GO

