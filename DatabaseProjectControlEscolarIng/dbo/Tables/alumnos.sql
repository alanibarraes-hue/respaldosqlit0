CREATE TABLE [dbo].[alumnos] (
    [alumno_id]   INT             IDENTITY (1, 1) NOT NULL,
    [matricula]   VARCHAR (20)    NOT NULL,
    [nombre]      VARCHAR (100)   NOT NULL,
    [edad]        TINYINT         NOT NULL,
    [tetramestre] TINYINT         NOT NULL,
    [promedio]    DECIMAL (5, 2)  NOT NULL,
    [pago_tetra]  DECIMAL (10, 2) DEFAULT ((0.00)) NOT NULL,
    [carrera_id]  VARCHAR (10)    NOT NULL,
    [tutor_id]    INT             NOT NULL,
    CONSTRAINT [pk_alumnos] PRIMARY KEY CLUSTERED ([alumno_id] ASC),
    CONSTRAINT [chk_alumnos_edad] CHECK ([edad]>=(15)),
    CONSTRAINT [chk_alumnos_promedio] CHECK ([promedio]>=(0.00) AND [promedio]<=(100.00)),
    CONSTRAINT [chk_alumnos_tetramestre] CHECK ([tetramestre]>=(1) AND [tetramestre]<=(12)),
    CONSTRAINT [fk_alumnos_carreras] FOREIGN KEY ([carrera_id]) REFERENCES [dbo].[carreras] ([carrera_id]) ON UPDATE CASCADE,
    CONSTRAINT [fk_alumnos_tutores] FOREIGN KEY ([tutor_id]) REFERENCES [dbo].[tutores] ([tutor_id]) ON UPDATE CASCADE,
    CONSTRAINT [uq_alumnos_matricula] UNIQUE NONCLUSTERED ([matricula] ASC)
);


GO

