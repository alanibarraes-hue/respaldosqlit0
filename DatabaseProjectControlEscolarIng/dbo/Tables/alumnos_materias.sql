CREATE TABLE [dbo].[alumnos_materias] (
    [alumno_id]    INT            NOT NULL,
    [materia_id]   INT            NOT NULL,
    [periodo]      VARCHAR (10)   NOT NULL,
    [calificacion] DECIMAL (4, 2) NOT NULL,
    CONSTRAINT [pk_alumnos_materias] PRIMARY KEY CLUSTERED ([alumno_id] ASC, [materia_id] ASC),
    CONSTRAINT [chk_am_calificacion] CHECK ([calificacion]>=(0.00) AND [calificacion]<=(100.00)),
    CONSTRAINT [fk_am_alumnos] FOREIGN KEY ([alumno_id]) REFERENCES [dbo].[alumnos] ([alumno_id]) ON DELETE CASCADE,
    CONSTRAINT [fk_am_materias] FOREIGN KEY ([materia_id]) REFERENCES [dbo].[materias] ([materia_id]) ON DELETE CASCADE
);


GO

