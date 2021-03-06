
CREATE DATABASE OCAPI_Test
GO
USE [OCAPI_Test]
GO
/****** Object:  Table [dbo].[Sedes]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON






GO
CREATE TABLE [dbo].[Modulos](
	[idModulo] [smallint] IDENTITY(0,1) NOT NULL,
	[nomModulo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[idModulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTextosParametrizados]    Script Date: 1/18/2019 7:56:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTextosParametrizados](
	[idTipoTexto] [smallint] IDENTITY(1,1) NOT NULL,
	[nomTipoTexto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoTextoParametrizado] PRIMARY KEY CLUSTERED 
(
	[idTipoTexto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Modulos] ON 
GO
INSERT [dbo].[Modulos] ([idModulo], [nomModulo]) VALUES (0, N'Todos')
GO
INSERT [dbo].[Modulos] ([idModulo], [nomModulo]) VALUES (1, N'Historia Clínica')
GO
INSERT [dbo].[Modulos] ([idModulo], [nomModulo]) VALUES (2, N'Optometría')
GO
INSERT [dbo].[Modulos] ([idModulo], [nomModulo]) VALUES (3, N'Visiometría')
GO
SET IDENTITY_INSERT [dbo].[Modulos] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoTextosParametrizados] ON 
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (1, N'Observación')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (2, N'Concepto')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (3, N'Recomendación')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (4, N'Remisión')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (5, N'Conclusión')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (6, N'Ingreso')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (7, N'Periódico')
GO
INSERT [dbo].[TipoTextosParametrizados] ([idTipoTexto], [nomTipoTexto]) VALUES (8, N'Egreso')
GO
SET IDENTITY_INSERT [dbo].[TipoTextosParametrizados] OFF
GO

CREATE TABLE [dbo].[AFPs](
	[idAFP] [smallint] IDENTITY(0,1) NOT NULL,
	[nomAFP] [varchar](100) NOT NULL,
	[identificacion] [varchar](20) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_AFPs] PRIMARY KEY CLUSTERED 
(
	[idAFP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARLs]    Script Date: 1/18/2019 7:11:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARLs](
	[idARL] [smallint] IDENTITY(0,1) NOT NULL,
	[nomARL] [varchar](100) NOT NULL,
	[identificacionARL] [varchar](20) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_ARL] PRIMARY KEY CLUSTERED 
(
	[idARL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EPS]    Script Date: 1/18/2019 7:11:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EPS](
	[idEPS] [smallint] IDENTITY(0,1) NOT NULL,
	[nomEPS] [varchar](100) NOT NULL,
	[identificacion] [varchar](20) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_EPS] PRIMARY KEY CLUSTERED 
(
	[idEPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escolaridad]    Script Date: 1/18/2019 7:11:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escolaridad](
	[idEscolaridad] [smallint] IDENTITY(0,1) NOT NULL,
	[nomEscolaridad] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Escolaridad] PRIMARY KEY CLUSTERED 
(
	[idEscolaridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AFPs] ON 
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (0, N'Sin AFP', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (1, N'COLFONDOS', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (2, N'COLPENSIONES', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (3, N'ING', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (4, N'ISS', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (5, N'OLD MUTUAL', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (6, N'PORVENIR', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (7, N'PROTECCION', N'', 1)
GO
INSERT [dbo].[AFPs] ([idAFP], [nomAFP], [identificacion], [activo]) VALUES (8, N'SKANDIA', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[AFPs] OFF
GO
SET IDENTITY_INSERT [dbo].[ARLs] ON 
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (0, N'Ninguna', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (1, N'AXA COLPATRIA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (2, N'BOLÍVAR', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (3, N'AURORA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (4, N'ALFA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (5, N'LIBERTY', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (6, N'POSITIVA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (7, N'COLMENA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (8, N'SURA', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (9, N'EQUIDAD', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (10, N'MAPFRE', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (11, N'Otro', NULL, 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (12, N'Sin ARL', N'', 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (13, N'COLMENA', N'', 1)
GO
INSERT [dbo].[ARLs] ([idARL], [nomARL], [identificacionARL], [activo]) VALUES (14, N'ARP SURA ', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[ARLs] OFF
GO
SET IDENTITY_INSERT [dbo].[EPS] ON 
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (0, N'Sin EPS', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (1, N'ALIANSALUD', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (2, N'CAFESALUD', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (3, N'CAJACOPI', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (4, N'COMFENALCO', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (5, N'COMPENSAR', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (6, N'COOMEVA', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (7, N'COOSALUD', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (8, N'EPS SURA', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (9, N'FAMISANAR', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (10, N'FERROCARRILES NACIONALES', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (11, N'FOSYGA', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (12, N'GOLDEN GROUP', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (13, N'HUMANA VIVIR', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (14, N'MUTUAL SER', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (15, N'NUEVA EPS', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (16, N'SALUD COLPATRIA', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (17, N'SALUD COMPENSAR', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (18, N'SALUD VIDA', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (19, N'SALUDCOOP', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (20, N'SALUDTOTAL', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (21, N'SANITAS', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (22, N'COMPARTA ', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (23, N'AMBUQ', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (24, N'SERVICIO OCCIDENTAL DE SALUD SOS. EPS', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (25, N'COMFACOR', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (26, N'COMFENALCO VALLE', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (27, N'MEDIMAS', N'', 1)
GO
INSERT [dbo].[EPS] ([idEPS], [nomEPS], [identificacion], [activo]) VALUES (28, N'CRUZ BLANCA', N'', 1)
GO
SET IDENTITY_INSERT [dbo].[EPS] OFF
GO
SET IDENTITY_INSERT [dbo].[Escolaridad] ON 
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (0, N'Ninguna')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (1, N'Analfabeta')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (2, N'Primaria')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (3, N'Primaria Incompleta')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (4, N'Secundaria')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (5, N'Secundaria Incompleta')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (6, N'Técnico')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (7, N'Tecnólogo')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (8, N'Universitario')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (9, N'Universitario Incompleto')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (10, N'Especialización')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (11, N'Maestría')
GO
INSERT [dbo].[Escolaridad] ([idEscolaridad], [nomEscolaridad]) VALUES (12, N'Doctorado')
GO
SET IDENTITY_INSERT [dbo].[Escolaridad] OFF
GO



CREATE TABLE [dbo].[Sedes](
	[idSede] [int] IDENTITY(1,1) NOT NULL,
	[nombreSede] [varchar](100) NULL,
	[fk_idEmpresa] [int] NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Sedes] PRIMARY KEY CLUSTERED 
(
	[idSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actores]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[idActor] [int] IDENTITY(1,1) NOT NULL,
	[tipoDoc] [varchar](3) NOT NULL,
	[identificacion] [varchar](20) NOT NULL,
	[nombres] [varchar](200) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[nomCompleto] [varchar](350) NULL,
	[fechaNacimiento] [date] NULL,
	[idPaisNacimiento] [smallint] NULL,
	[idDepNacimiento] [smallint] NULL,
	[idCiudadNacimiento] [smallint] NULL,
	[idEstadoCivil] [smallint] NULL,
	[genero] [varchar](2) NULL,
	[direccion] [varchar](200) NULL,
	[idDepRes] [smallint] NULL,
	[idCiudadRes] [smallint] NULL,
	[telefono1] [varchar](15) NULL,
	[telefono2] [varchar](15) NULL,
	[movil] [varchar](15) NULL,
	[email1] [varchar](200) NULL,
	[email2] [varchar](200) NULL,
	[idEscolaridad] [smallint] NULL,
	[profesion] [varchar](100) NULL,
	[ocupacion] [varchar](100) NULL,
	[idEPS] [smallint] NULL,
	[idARL] [smallint] NULL,
	[idAFP] [smallint] NULL,
	[responsable] [varchar](200) NULL,
	[parentesco] [varchar](50) NULL,
	[telResponsable1] [varchar](15) NULL,
	[telResponsable2] [varchar](15) NULL,
	[acompañante] [varchar](200) NULL,
	[numeroHijos] [tinyint] NULL,
	[fechaIngreso] [date] NULL,
	[foto] [image] NULL,
	[huella] [image] NULL,
	[firma] [image] NULL,
	[fechaCrea] [smalldatetime] NULL,
	[usuarioCrea] [varchar](200) NULL,
	[fechaActualiza] [smalldatetime] NULL,
	[usuarioActualiza] [varchar](200) NULL,
 CONSTRAINT [PK_Actores] PRIMARY KEY CLUSTERED 
(
	[idActor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[idAgenda] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[hora] [varchar](10) NULL,
	[idSede] [int] NULL,
	[idActor] [int] NULL,
	[idPerfilCargo] [smallint] NULL,
	[idTipoExamen] [int] NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[idAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[idEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](20) NULL,
	[rut] [varchar](20) NULL,
	[camaraComercio] [varchar](100) NULL,
	[digitoVerificacion] [char](2) NULL,
	[razonSocial] [varchar](100) NULL,
	[correo] [varchar](50) NULL,
	[direccion] [varchar](75) NULL,
	[telefono] [varchar](50) NULL,
	[codigoActividadEcono] [varchar](20) NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historia]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON

GO
CREATE TABLE [dbo].[tipoExamen](
	[idTipoExamen] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_tipoExamen] PRIMARY KEY CLUSTERED 
(
	[idTipoExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historia](
	[idHistoria] [bigint] IDENTITY(1,1) NOT NULL,
	[idEstadoCivil] [smallint] NULL,
	[genero] [varchar](2) NULL,
	[edad] [tinyint] NULL,
	[direccion] [varchar](200) NULL,
	[telefono1] [varchar](15) NULL,
	[telefono2] [varchar](15) NULL,
	[movil] [varchar](15) NULL,
	[idEscolaridad] [smallint] NULL,
	[idEPS] [smallint] NULL,
	[idARL] [smallint] NULL,
	[idAFP] [smallint] NULL,
	[ocupacion] [varchar](50) NULL,
	[profesion] [varchar](100) NULL,
	[idAgenda] [int] NULL,
	[acompanante] [varchar](100) NULL,
	[responsable] [varchar](100) NULL,
	[numerohijos] [tinyint] NULL,
	[telefonoResponsable] [varchar](15) NULL,
	[telefonoResponsable2] [varchar](15) NULL,
	[idHistoriaEstado] [int] NULL,
	[idSede] [int] NULL,
 CONSTRAINT [PK_Historia] PRIMARY KEY CLUSTERED 
(
	[idHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriaEstado]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriaEstado](
	[idHistoriaEstado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_HistoriaEstado] PRIMARY KEY CLUSTERED 
(
	[idHistoriaEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[HistoriaPacienteView]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
			
CREATE VIEW [dbo].[HistoriaPacienteView] 
		
AS
			
SELECT 
H.idHistoria
,A.idActor
,A.identificacion
,A.nomCompleto
,H.idEstadoCivil
,H.genero
,H.edad
,H.direccion
,H.telefono1
,H.telefono2
,H.movil
,H.idEscolaridad
,nomEscolaridad AS escolaridad
,H.idEPS
,E.nomEPS AS EPS
,H.idARL
,AR.nomARL AS Arl
,H.idAFP
,AF.nomAFP AS Afp
,H.ocupacion
,H.profesion
,H.idAgenda
,H.acompanante
,H.responsable
,H.numerohijos
,H.telefonoResponsable
,H.telefonoResponsable2
,AG.fecha AS fechaAgendamiento
,AG.hora AS HoraAgendamientos
,TX.idTipoExamen
,TX.descripcion AS tipoExamen
,H.idHistoriaEstado
,HE.descripcion as historiaEstado
FROM Historia H INNER JOIN Agenda AG ON AG.idAgenda = H.idAgenda INNER JOIN Actores A ON 
A.idActor = AG.idActor
INNER JOIN tipoExamen TX ON TX.idTipoExamen = AG.idTipoExamen
INNER JOIN HistoriaEstado HE ON HE.idHistoriaEstado = H.idHistoriaEstado
INNER JOIN EPS E ON E.idEps = H.idEps INNER JOIN ARLs AR ON AR.idArl = H.idArl
INNER JOIN AFPs AF ON AF.idAFP = H.idAFP
INNER JOIN Sedes S ON S.idSede = H.idSede
INNER JOIN Empresas EM ON EM.idEmpresa = S.fk_idEmpresa
INNER JOIN Escolaridad ES ON ES.idEscolaridad = H.idEscolaridad
GO
/****** Object:  Table [dbo].[AgudezaVisualCercana]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgudezaVisualCercana](
	[idAVC] [smallint] IDENTITY(0,1) NOT NULL,
	[nomAVC] [varchar](250) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_AgudezaVisualCercana] PRIMARY KEY CLUSTERED 
(
	[idAVC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgudezaVisualLejana]    Script Date: 18/01/2019 6:07:07 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgudezaVisualLejana](
	[idAVL] [smallint] IDENTITY(0,1) NOT NULL,
	[nomAVL] [varchar](100) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_AgudezaVisualLejana] PRIMARY KEY CLUSTERED 
(
	[idAVL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estereopsis]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estereopsis](
	[idEstereopsis] [smallint] IDENTITY(1,1) NOT NULL,
	[nomEstereopsis] [varchar](100) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_Estereopsis] PRIMARY KEY CLUSTERED 
(
	[idEstereopsis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forias]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forias](
	[idForia] [smallint] IDENTITY(1,1) NOT NULL,
	[nomForia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Forias] PRIMARY KEY CLUSTERED 
(
	[idForia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LentesFrecuenciaUso]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LentesFrecuenciaUso](
	[idFrecuenciaUso] [smallint] IDENTITY(1,1) NOT NULL,
	[nomFrecuenciaUso] [varchar](100) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_LentesFrecuenciaUso] PRIMARY KEY CLUSTERED 
(
	[idFrecuenciaUso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LentesTipos]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LentesTipos](
	[idTipoLente] [smallint] IDENTITY(0,1) NOT NULL,
	[nomTipoLente] [varchar](250) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_LentesTipos] PRIMARY KEY CLUSTERED 
(
	[idTipoLente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PercepcionColores]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PercepcionColores](
	[idPercepcionColor] [smallint] IDENTITY(0,1) NOT NULL,
	[nomPercepcionColor] [varchar](100) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_PercepcionColores] PRIMARY KEY CLUSTERED 
(
	[idPercepcionColor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextosParametrizados]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextosParametrizados](
	[idTexto] [int] IDENTITY(0,1) NOT NULL,
	[descTexto] [varchar](max) NOT NULL,
	[idTipoTexto] [smallint] NOT NULL,
	[idModulo] [smallint] NOT NULL,
	[observacion] [varchar](max) NULL,
	[valor] [varchar](100) NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_TextoParametrizado] PRIMARY KEY CLUSTERED 
(
	[idTexto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tropias]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tropias](
	[idTropia] [smallint] IDENTITY(1,1) NOT NULL,
	[nomTropia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tropias] PRIMARY KEY CLUSTERED 
(
	[idTropia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisiometriaConceptos]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisiometriaConceptos](
	[idVisiometriaConcepto] [int] IDENTITY(1,1) NOT NULL,
	[idVisiometria] [int] NOT NULL,
	[idTexto] [int] NOT NULL,
 CONSTRAINT [PK_VisiometriaConceptos] PRIMARY KEY CLUSTERED 
(
	[idVisiometriaConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisiometriaEvaluacionOjos]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisiometriaEvaluacionOjos](
	[idEvalOjos] [int] IDENTITY(1,1) NOT NULL,
	[idVisiometria] [int] NOT NULL,
	[visionLejanaOjoIzqSinLentes] [smallint] NULL,
	[visionLejanaOjoIzqConLentes] [smallint] NULL,
	[visionLejanaOjoIzqAgujeroE] [smallint] NULL,
	[visionLejanaOjoDerSinLentes] [smallint] NULL,
	[visionLejanaOjoDerConLentes] [smallint] NULL,
	[visionLejanaOjoDerAgujeroE] [smallint] NULL,
	[visionLejanaAmbosOjosSinLentes] [smallint] NULL,
	[visionLejanaAmbosOjosConLentes] [smallint] NULL,
	[visionLejanaAmbosOjosAgujeroE] [smallint] NULL,
	[visionCercanaOjoIzqSinLentes] [smallint] NULL,
	[visionCercanaOjoIzqConLentes] [smallint] NULL,
	[visionCercanaOjoDerSinLentes] [smallint] NULL,
	[visionCercanaOjoDerConLentes] [smallint] NULL,
	[visionCercanaAmbosOjosSinLentes] [smallint] NULL,
	[visionCercanaAmbosOjosConLentes] [smallint] NULL,
 CONSTRAINT [PK_VisiometriaEvaluacionOjos] PRIMARY KEY CLUSTERED 
(
	[idEvalOjos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisiometriaRecomendaciones]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisiometriaRecomendaciones](
	[idVisiometriaRecomendacion] [int] IDENTITY(1,1) NOT NULL,
	[idVisiometria] [int] NOT NULL,
	[idTexto] [int] NOT NULL,
 CONSTRAINT [PK_VisiometriaRecomendaciones] PRIMARY KEY CLUSTERED 
(
	[idVisiometriaRecomendacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visiometrias]    Script Date: 18/01/2019 6:07:08 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visiometrias](
	[idVisiometria] [int] IDENTITY(1,1) NOT NULL,
	[idHistoria] [bigint] NOT NULL,
	[idProfesional] [int] NOT NULL,
	[sintomatologia] [varchar](1000) NOT NULL,
	[usoLentes] [bit] NOT NULL,
	[idFrecuenciaUso] [smallint] NULL,
	[idTipoLente] [smallint] NULL,
	[usoLentesContacto] [bit] NOT NULL,
	[usoCirugia] [bit] NOT NULL,
	[nomCirugia] [varchar](300) NULL,
	[idPercepcionColores] [smallint] NOT NULL,
	[idEstereopsis] [smallint] NULL,
	[idForia] [smallint] NOT NULL,
	[idTropia] [smallint] NOT NULL,
	[recomendacionExtra] [varchar](5000) NULL,
	[conceptoExtra] [varchar](5000) NULL,
 CONSTRAINT [PK_Visiometrias] PRIMARY KEY CLUSTERED 
(
	[idVisiometria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

GO
SET IDENTITY_INSERT [dbo].[tipoExamen] ON 
GO
INSERT [dbo].[tipoExamen] ([idTipoExamen], [descripcion]) VALUES (1, N'Ingreso')
GO
INSERT [dbo].[tipoExamen] ([idTipoExamen], [descripcion]) VALUES (2, N'Retiro')
GO
SET IDENTITY_INSERT [dbo].[tipoExamen] OFF
GO
SET IDENTITY_INSERT [dbo].[Actores] ON 

INSERT [dbo].[Actores] ([idActor], [tipoDoc], [identificacion], [nombres], [apellido1], [apellido2], [nomCompleto], [fechaNacimiento], [idPaisNacimiento], [idDepNacimiento], [idCiudadNacimiento], [idEstadoCivil], [genero], [direccion], [idDepRes], [idCiudadRes], [telefono1], [telefono2], [movil], [email1], [email2], [idEscolaridad], [profesion], [ocupacion], [idEPS], [idARL], [idAFP], [responsable], [parentesco], [telResponsable1], [telResponsable2], [acompañante], [numeroHijos], [fechaIngreso], [foto], [huella], [firma], [fechaCrea], [usuarioCrea], [fechaActualiza], [usuarioActualiza]) VALUES (1, N'1', N'132665588', N'Alejandro', N'Castaño', N'Garces', N'Alejandro Castaño Garces', CAST(N'1988-01-01' AS Date), 42, 1, 1, 1, N'1', N'Call 33', 1, 1, N'3665589', N'66998855', N'3216359689', N'a@a.com', N'b@b.com', 1, N'desarrollador', N'1', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Actores] OFF
INSERT [dbo].[Agenda] ([idAgenda], [fecha], [hora], [idSede], [idActor], [idPerfilCargo], [idTipoExamen]) VALUES (2, CAST(N'2018-01-03T00:00:00.000' AS DateTime), N'15:00', 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[AgudezaVisualCercana] ON 

INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (0, N'0.5M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (1, N'0.75M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (2, N'1.00M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (3, N'1.25M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (4, N'1.50M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (5, N'1.75M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (6, N'2.00M', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (7, N'No percepción luminosa', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (8, N'Percepción luminosa', 1)
INSERT [dbo].[AgudezaVisualCercana] ([idAVC], [nomAVC], [activo]) VALUES (9, N'Percepción de bultos', 1)
SET IDENTITY_INSERT [dbo].[AgudezaVisualCercana] OFF
SET IDENTITY_INSERT [dbo].[AgudezaVisualLejana] ON 

INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (0, N'20/20', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (1, N'20/25', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (2, N'20/30', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (3, N'20/40', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (4, N'20/50', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (5, N'20/60', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (6, N'20/100', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (7, N'20/200', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (8, N'20/400', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (9, N'No percepción luminosa', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (10, N'Percepción luminosa', 1)
INSERT [dbo].[AgudezaVisualLejana] ([idAVL], [nomAVL], [activo]) VALUES (11, N'Percepción de bultos', 1)
SET IDENTITY_INSERT [dbo].[AgudezaVisualLejana] OFF
SET IDENTITY_INSERT [dbo].[Empresas] ON 

INSERT [dbo].[Empresas] ([idEmpresa], [nit], [rut], [camaraComercio], [digitoVerificacion], [razonSocial], [correo], [direccion], [telefono], [codigoActividadEcono]) VALUES (1, N'132665588', N'132665588-9', N'99896', N'9 ', N'Alejandro Castaño Inc.', N'alejo@alejo.com', N'calle 33 a', N'3445566', N'0002')
SET IDENTITY_INSERT [dbo].[Empresas] OFF
SET IDENTITY_INSERT [dbo].[Estereopsis] ON 

INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (1, N'40” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (2, N'50” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (3, N'60” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (4, N'80” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (5, N'100” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (6, N'140” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (7, N'200” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (8, N'400” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (9, N'800” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (10, N'1150” de arco', 1)
INSERT [dbo].[Estereopsis] ([idEstereopsis], [nomEstereopsis], [activo]) VALUES (11, N'Ausente', 1)
SET IDENTITY_INSERT [dbo].[Estereopsis] OFF
SET IDENTITY_INSERT [dbo].[Forias] ON 

INSERT [dbo].[Forias] ([idForia], [nomForia]) VALUES (1, N'Ortoforia')
INSERT [dbo].[Forias] ([idForia], [nomForia]) VALUES (2, N'Exoforia')
INSERT [dbo].[Forias] ([idForia], [nomForia]) VALUES (3, N'Endoforia')
SET IDENTITY_INSERT [dbo].[Forias] OFF
SET IDENTITY_INSERT [dbo].[Historia] ON 

INSERT [dbo].[Historia] ([idHistoria], [idEstadoCivil], [genero], [edad], [direccion], [telefono1], [telefono2], [movil], [idEscolaridad], [idEPS], [idARL], [idAFP], [ocupacion], [profesion], [idAgenda], [acompanante], [responsable], [numerohijos], [telefonoResponsable], [telefonoResponsable2], [idHistoriaEstado], [idSede]) VALUES (4, 1, N'M', 30, N'Call33', N'4336699', N'3336655', N'3216359869', 8, 1, 1, 1, N'Desarrollador', N'Desarrollo', 2, NULL, NULL, NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Historia] OFF
SET IDENTITY_INSERT [dbo].[HistoriaEstado] ON 

INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (1, N'Creada')
INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (2, N'En Proceso')
INSERT [dbo].[HistoriaEstado] ([idHistoriaEstado], [descripcion]) VALUES (3, N'Pendiente')
SET IDENTITY_INSERT [dbo].[HistoriaEstado] OFF
SET IDENTITY_INSERT [dbo].[LentesFrecuenciaUso] ON 

INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (1, N'Permanentes', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (2, N'ocasionales', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (3, N'de lectura', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (4, N'de protección solar', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (5, N'protección a luz artificial', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (6, N'para trabajo en computador', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (7, N'para visión cercana', 1)
INSERT [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso], [nomFrecuenciaUso], [activo]) VALUES (8, N'para visión lejana', 1)
SET IDENTITY_INSERT [dbo].[LentesFrecuenciaUso] OFF
SET IDENTITY_INSERT [dbo].[LentesTipos] ON 

INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (0, N'Bifocal invisible', 1)
INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (1, N'Bifocal Flat-top', 1)
INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (2, N'Progresivo', 1)
INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (3, N'De protección UV', 1)
INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (4, N'De cotacto', 1)
INSERT [dbo].[LentesTipos] ([idTipoLente], [nomTipoLente], [activo]) VALUES (5, N'Gafas de seguridad industrial con corrección óptica', 1)
SET IDENTITY_INSERT [dbo].[LentesTipos] OFF
SET IDENTITY_INSERT [dbo].[PercepcionColores] ON 

INSERT [dbo].[PercepcionColores] ([idPercepcionColor], [nomPercepcionColor], [activo]) VALUES (0, N'Visión Cromática Normal', 1)
INSERT [dbo].[PercepcionColores] ([idPercepcionColor], [nomPercepcionColor], [activo]) VALUES (1, N'Visión Cromática Alterada', 1)
SET IDENTITY_INSERT [dbo].[PercepcionColores] OFF
SET IDENTITY_INSERT [dbo].[Sedes] ON 

INSERT [dbo].[Sedes] ([idSede], [nombreSede], [fk_idEmpresa], [direccion], [telefono]) VALUES (1, N'Principal - Centro', 1, N'Call 34', N'3665599')
SET IDENTITY_INSERT [dbo].[Sedes] OFF
SET IDENTITY_INSERT [dbo].[TextosParametrizados] ON 

INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (0, N'Agudeza visual lejos y cerca dentro de los parámetros normales', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (1, N'Disminución de agudeza visual, mejora con agujero estenopeico', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (2, N'Disminución agudeza visual mejora con corrección óptica', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (3, N'Disminución agudeza visual cercana, mejora con lente positivo', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (4, N'Disminución agudeza visual con corrección óptica, mejora con agujero estenopeico', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (5, N'Alteración estereopsis', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (6, N'Alteración visión cromática', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (7, N'Estereopsis normal', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (8, N'Visión cromática normal', 2, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (9, N'Se recomienda valoración por optometría', 3, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (10, N'Se recomienda valoración por optometría para actualizar corrección optica', 3, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (11, N'Control anual por optometría', 3, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (12, N'Requiere correción optica para el desempeño del cargo y/o tarea', 3, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (13, N'Valoración por optalmología', 3, 3, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (14, N'Se recomienda valoración en EPS, para adaptación de lentes de contacto', 4, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (15, N'Se recomienda evaluación en EPS por médico oftalmólogo', 4, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (16, N'Se recomienda evaluación en EPS por ortóptica', 4, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (17, N'Se recomienda evaluación y manejo por optometría', 4, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (18, N'Su capacidad visual actual es adecuada', 5, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (19, N'Su capacidad visual actual es adecuada con la corrección óptica', 5, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (20, N'Su capacidad visual actual es insuficiente', 5, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (21, N'Su capacidad visual actual es insuficiente y requiere corrección óptica', 5, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (22, N'Su capacidad visual es insuficiente y debe ser evaluado por especialista para posibilidad de mejoramiento', 5, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (23, N'Requiere corrección optica de su déficit visual', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (24, N'Requiere actualizar corrección óptica', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (25, N'Se recomienda evaluación por oftalmología', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (26, N'Requiere cambio de tipo de corrección óptica', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (27, N'Se recomienda ingresar al programa de conservación visual', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (28, N'Se recomienda no desempeñar actividades o tareas con alta exigencia visual', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (29, N'Se recomienda laborar con corrección óptica', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (30, N'Se recomienda uso gafas de seguridad contra proyección de partículas o salpicaduras', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (31, N'Se recomienda uso gafas de seguridad en exposición a gases, vapores o químicos', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (32, N'Se recomienda no realizar actividades laborales que requieran discriminación de colores', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (33, N'Se recomienda no realizar actividades laborales que requieran percepción de profundidad normal', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (34, N'Se recomienda protección visual adecuada para exposición a luz solar', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (35, N'Se recomienda protección visual adecuada para exposición a luz solar y artificial', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (36, N'Se recomienda uso de gafas de seguridad con corrección óptica', 3, 2, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (37, N'No presenta restricciones para el cargo', 6, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (38, N'Presenta restricciones para el cargo', 6, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (39, N'Pendiente', 6, 1, N'Si el concepto está pendiente no puede cerrar la historia', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (40, N'Apto para el cargo', 6, 1, N'Este concepto es solo para las empresas que lo soliciten de esta forma ', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (41, N'No Apto para el cargo', 6, 1, N'Este concepto es solo para las empresas que lo soliciten de esta forma ', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (42, N'Es satisfactorio para desempeñar su cargo', 7, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (43, N'No es satisfactorio para desempeñar su cargo, requiere recomendaciones médicas', 7, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (44, N'Presenta una alteración en su estado de salud pero puede desempeñar su cargo', 7, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (45, N'Presenta una alteración en su estado de salud, que debe ser valorada en su Institución de salud', 7, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (46, N'Pendiente', 7, 1, N'Si el concepto está pendiente no puede cerrar la historia', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (47, N'Es satisfactorio comparado con la evaluación de ingreso', 8, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (48, N'Es satisfactorio desde el ámbito de la salud en el trabajo', 8, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (49, N'Presentea hallazgos en la evaluación médica, que deben continuar siendo manejados en su institución de salud', 8, 1, N'', NULL, 1)
INSERT [dbo].[TextosParametrizados] ([idTexto], [descTexto], [idTipoTexto], [idModulo], [observacion], [valor], [activo]) VALUES (50, N'No refiere sintomatología visual en el momento', 1, 3, N'', N'SintomatologiaVisual', 1)
SET IDENTITY_INSERT [dbo].[TextosParametrizados] OFF
SET IDENTITY_INSERT [dbo].[Tropias] ON 

INSERT [dbo].[Tropias] ([idTropia], [nomTropia]) VALUES (1, N'No')
INSERT [dbo].[Tropias] ([idTropia], [nomTropia]) VALUES (2, N'Endotropia')
INSERT [dbo].[Tropias] ([idTropia], [nomTropia]) VALUES (3, N'Exotropia')
INSERT [dbo].[Tropias] ([idTropia], [nomTropia]) VALUES (4, N'Vertical')
SET IDENTITY_INSERT [dbo].[Tropias] OFF
ALTER TABLE [dbo].[Visiometrias] ADD  CONSTRAINT [DF_Visiometrias_usoLentes]  DEFAULT ((0)) FOR [usoLentes]
GO
ALTER TABLE [dbo].[Visiometrias] ADD  CONSTRAINT [DF_Visiometrias_usoLentesContacto]  DEFAULT ((0)) FOR [usoLentesContacto]
GO
ALTER TABLE [dbo].[Visiometrias] ADD  CONSTRAINT [DF_Visiometrias_usoCirugia]  DEFAULT ((0)) FOR [usoCirugia]
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_AFPs] FOREIGN KEY([idAFP])
REFERENCES [dbo].[AFPs] ([idAFP])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_AFPs]
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_ARLs] FOREIGN KEY([idARL])
REFERENCES [dbo].[ARLs] ([idARL])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_ARLs]

GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_EPS] FOREIGN KEY([idEPS])
REFERENCES [dbo].[EPS] ([idEPS])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_EPS]
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_Escolaridad] FOREIGN KEY([idEscolaridad])
REFERENCES [dbo].[Escolaridad] ([idEscolaridad])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_Escolaridad]
--GO
--ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_Paises] FOREIGN KEY([idPaisNacimiento])
--REFERENCES [dbo].[Paises] ([idPais])
--GO
--ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_Paises]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Actores] FOREIGN KEY([idActor])
REFERENCES [dbo].[Actores] ([idActor])
--GO
--ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Actores]
--GO
--ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_PerfilesCargo] FOREIGN KEY([idPerfilCargo])
--REFERENCES [dbo].[PerfilesCargo] ([idPerfilesCargo])
--GO
--ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_PerfilesCargo]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Sedes] FOREIGN KEY([idSede])
REFERENCES [dbo].[Sedes] ([idSede])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Sedes]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_tipoExamen] FOREIGN KEY([idTipoExamen])
REFERENCES [dbo].[TipoExamen] ([idTipoExamen])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_tipoExamen]
GO
ALTER TABLE [dbo].[Historia]  WITH CHECK ADD  CONSTRAINT [FK_Historia_Agenda] FOREIGN KEY([idAgenda])
REFERENCES [dbo].[Agenda] ([idAgenda])
GO
ALTER TABLE [dbo].[Historia] CHECK CONSTRAINT [FK_Historia_Agenda]
GO
ALTER TABLE [dbo].[Historia]  WITH CHECK ADD  CONSTRAINT [FK_Historia_HistoriaEstado] FOREIGN KEY([idHistoriaEstado])
REFERENCES [dbo].[HistoriaEstado] ([idHistoriaEstado])
GO
ALTER TABLE [dbo].[Historia] CHECK CONSTRAINT [FK_Historia_HistoriaEstado]
GO
ALTER TABLE [dbo].[Sedes]  WITH CHECK ADD  CONSTRAINT [FK_Sedes_Empresas] FOREIGN KEY([fk_idEmpresa])
REFERENCES [dbo].[Empresas] ([idEmpresa])
GO
ALTER TABLE [dbo].[Sedes] CHECK CONSTRAINT [FK_Sedes_Empresas]
GO
ALTER TABLE [dbo].[TextosParametrizados]  WITH CHECK ADD  CONSTRAINT [FK_TextosParametrizados_Modulos] FOREIGN KEY([idModulo])
REFERENCES [dbo].[Modulos] ([idModulo])
GO
ALTER TABLE [dbo].[TextosParametrizados] CHECK CONSTRAINT [FK_TextosParametrizados_Modulos]
GO
ALTER TABLE [dbo].[TextosParametrizados]  WITH CHECK ADD  CONSTRAINT [FK_TextosParametrizados_TipoTextosParametrizados] FOREIGN KEY([idTipoTexto])
REFERENCES [dbo].[TipoTextosParametrizados] ([idTipoTexto])
GO
ALTER TABLE [dbo].[TextosParametrizados] CHECK CONSTRAINT [FK_TextosParametrizados_TipoTextosParametrizados]
GO
ALTER TABLE [dbo].[VisiometriaConceptos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaConceptos_TextosParametrizados] FOREIGN KEY([idTexto])
REFERENCES [dbo].[TextosParametrizados] ([idTexto])
GO
ALTER TABLE [dbo].[VisiometriaConceptos] CHECK CONSTRAINT [FK_VisiometriaConceptos_TextosParametrizados]
GO
ALTER TABLE [dbo].[VisiometriaConceptos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaConceptos_Visiometrias] FOREIGN KEY([idVisiometria])
REFERENCES [dbo].[Visiometrias] ([idVisiometria])
GO
ALTER TABLE [dbo].[VisiometriaConceptos] CHECK CONSTRAINT [FK_VisiometriaConceptos_Visiometrias]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana] FOREIGN KEY([visionCercanaOjoIzqSinLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana1] FOREIGN KEY([visionCercanaOjoIzqConLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana1]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana2] FOREIGN KEY([visionCercanaOjoDerSinLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana2]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana3] FOREIGN KEY([visionCercanaOjoDerConLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana3]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana4] FOREIGN KEY([visionCercanaAmbosOjosSinLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana4]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana5] FOREIGN KEY([visionCercanaAmbosOjosConLentes])
REFERENCES [dbo].[AgudezaVisualCercana] ([idAVC])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_AgudezaVisualCercana5]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_Visiometrias] FOREIGN KEY([idVisiometria])
REFERENCES [dbo].[Visiometrias] ([idVisiometria])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_Visiometrias]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaAmbosOjosAgujero] FOREIGN KEY([visionLejanaAmbosOjosAgujeroE])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaAmbosOjosAgujero]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_visionLejanaAmbosOjosConLentes] FOREIGN KEY([visionLejanaAmbosOjosConLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_visionLejanaAmbosOjosConLentes]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaAmbosOjosSinLentes] FOREIGN KEY([visionLejanaAmbosOjosSinLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaAmbosOjosSinLentes]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerAgujero] FOREIGN KEY([visionLejanaOjoDerAgujeroE])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerAgujero]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerConLentes] FOREIGN KEY([visionLejanaOjoDerConLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerConLentes]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerSinLentes] FOREIGN KEY([visionLejanaOjoDerSinLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoDerSinLentes]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqAgujero] FOREIGN KEY([visionLejanaOjoIzqAgujeroE])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqAgujero]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqConLentes] FOREIGN KEY([visionLejanaOjoIzqConLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqConLentes]
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqSinLentes] FOREIGN KEY([visionLejanaOjoIzqSinLentes])
REFERENCES [dbo].[AgudezaVisualLejana] ([idAVL])
GO
ALTER TABLE [dbo].[VisiometriaEvaluacionOjos] CHECK CONSTRAINT [FK_VisiometriaEvaluacionOjos_VisionLejanaOjoIzqSinLentes]
GO
ALTER TABLE [dbo].[VisiometriaRecomendaciones]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaRecomendaciones_TextosParametrizados] FOREIGN KEY([idTexto])
REFERENCES [dbo].[TextosParametrizados] ([idTexto])
GO
ALTER TABLE [dbo].[VisiometriaRecomendaciones] CHECK CONSTRAINT [FK_VisiometriaRecomendaciones_TextosParametrizados]
GO
ALTER TABLE [dbo].[VisiometriaRecomendaciones]  WITH CHECK ADD  CONSTRAINT [FK_VisiometriaRecomendaciones_Visiometrias] FOREIGN KEY([idVisiometria])
REFERENCES [dbo].[Visiometrias] ([idVisiometria])
GO
ALTER TABLE [dbo].[VisiometriaRecomendaciones] CHECK CONSTRAINT [FK_VisiometriaRecomendaciones_Visiometrias]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_Actores] FOREIGN KEY([idProfesional])
REFERENCES [dbo].[Actores] ([idActor])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_Actores]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_Estereopsis] FOREIGN KEY([idEstereopsis])
REFERENCES [dbo].[Estereopsis] ([idEstereopsis])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_Estereopsis]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_Forias] FOREIGN KEY([idForia])
REFERENCES [dbo].[Forias] ([idForia])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_Forias]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_Historia] FOREIGN KEY([idHistoria])
REFERENCES [dbo].[Historia] ([idHistoria])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_Historia]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_LentesFrecuenciaUso] FOREIGN KEY([idFrecuenciaUso])
REFERENCES [dbo].[LentesFrecuenciaUso] ([idFrecuenciaUso])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_LentesFrecuenciaUso]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_LentesTipos] FOREIGN KEY([idTipoLente])
REFERENCES [dbo].[LentesTipos] ([idTipoLente])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_LentesTipos]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_PercepcionColores] FOREIGN KEY([idPercepcionColores])
REFERENCES [dbo].[PercepcionColores] ([idPercepcionColor])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_PercepcionColores]
GO
ALTER TABLE [dbo].[Visiometrias]  WITH CHECK ADD  CONSTRAINT [FK_Visiometrias_Tropias] FOREIGN KEY([idTropia])
REFERENCES [dbo].[Tropias] ([idTropia])
GO
ALTER TABLE [dbo].[Visiometrias] CHECK CONSTRAINT [FK_Visiometrias_Tropias]
GO
