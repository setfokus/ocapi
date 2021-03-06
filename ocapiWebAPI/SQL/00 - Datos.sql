USE [OCAPI]

SET IDENTITY_INSERT [dbo].[PerfilesCargo] ON 
GO
INSERT [dbo].[PerfilesCargo] ([idPerfilesCargo], [descripcion]) VALUES (1, N'Perfil 1')
GO
SET IDENTITY_INSERT [dbo].[PerfilesCargo] OFF
GO
SET IDENTITY_INSERT [dbo].[tipoExamen] ON 
GO
INSERT [dbo].[tipoExamen] ([idTipoExamen], [descripcion]) VALUES (1, N'Ingreso')
GO
INSERT [dbo].[tipoExamen] ([idTipoExamen], [descripcion]) VALUES (2, N'Retiro')
GO
SET IDENTITY_INSERT [dbo].[tipoExamen] OFF
GO
SET IDENTITY_INSERT [dbo].[HistoriaEstado] ON
GO
INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (1, N'Creada')
GO
INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (2, N'En Proceso')
GO
INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (3, N'Pendiente')
GO
SET IDENTITY_INSERT [dbo].[HistoriaEstado] OFF
GO
GO
SET IDENTITY_INSERT [dbo].[Empresas] ON 
GO
INSERT [dbo].[Empresas] ([idEmpresa], [nit], [rut], [camaraComercio], [digitoVerificacion], [razonSocial], [correo], [direccion], [telefono], [codigoActividadEcono]) VALUES (1, N'3669988', N'3669988-3', N'99896', N'9 ', N'Empresa1', N'alejo@alejo.com', N'calle 33 a', N'3445566', N'0002')
GO
SET IDENTITY_INSERT [dbo].[Empresas] OFF
GO
SET IDENTITY_INSERT [dbo].[Sedes] ON
GO
INSERT [dbo].[Sedes] ([idSede], [nombreSede], [fk_idEmpresa], [direccion], [telefono]) VALUES (1, N'Principal - Centro', 1, N'Call 34', N'3665599')
GO
SET IDENTITY_INSERT [dbo].[Sedes] OFF
GO
SET IDENTITY_INSERT [dbo].[Actores] ON 
GO
INSERT [dbo].[Actores] ([idActor], [tipoDoc], [identificacion], [nombres], [apellido1], [apellido2], [nomCompleto], [fechaNacimiento], [idPaisNacimiento], [idDepNacimiento], [idCiudadNacimiento], [idEstadoCivil], [genero], [direccion], [idDepRes], [idCiudadRes], [telefono1], [telefono2], [movil], [email1], [email2], [idEscolaridad], [profesion], [ocupacion], [idEPS], [idARL], [idAFP], [responsable], [parentesco], [telResponsable1], [telResponsable2], [acompañante], [numeroHijos], [fechaIngreso], [foto], [huella], [firma], [fechaCrea], [usuarioCrea], [fechaActualiza], [usuarioActualiza]) VALUES (1, N'1', N'1020421259', N'Alejandro', N'Castaño', N'Garces', N'Alejandro Castaño Garces', CAST(N'1988-01-01' AS Date), 42, 1, 1, 1, N'1', N'Call 33', 1, 1, N'3665589', N'66998855', N'3216359689', N'a@a.com', N'b@b.com', 1, N'desarrollador', N'1', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Actores] OFF
GO
SET IDENTITY_INSERT [dbo].[Agenda] ON 
GO
INSERT [dbo].[Agenda] ([idAgenda], [fecha], [hora], [idSede], [idActor], [idPerfilCargo], [idTipoExamen]) VALUES (2, CAST(N'2018-01-03T00:00:00.000' AS DateTime), N'15:00', 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Agenda] OFF
GO
SET IDENTITY_INSERT [dbo].[Historia] ON 
GO
INSERT [dbo].[Historia] ([idHistoria], [idEstadoCivil], [genero], [edad], [direccion], [telefono1], [telefono2], [movil], [idEscolaridad], [idEPS], [idARL], [idAFP], [ocupacion], [profesion], [idAgenda], [acompanante], [responsable], [numerohijos], [telefonoResponsable], [telefonoResponsable2], [idHistoriaEstado], [idSede]) VALUES (4, 1, N'M', 30, N'Call33', N'4336699', N'3336655', N'3216359869', 8, 1, 1, 1, N'Desarrollador', N'Desarrollo', 2, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Historia] OFF
GO
