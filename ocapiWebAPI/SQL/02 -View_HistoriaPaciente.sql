

IF EXISTS(SELECT 1 FROM sysobjects where name = 'HistoriaPacienteView' and type = 'V')
DROP VIEW dbo.HistoriaPacienteView 
GO
			
CREATE VIEW dbo.HistoriaPacienteView 
		
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
