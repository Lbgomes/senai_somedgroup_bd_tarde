--DQL

-- Mostrar as constultas dos médicos
SELECT ProntuarioPaciente.IdProntuarioPaciente, Clinica.IdClinica, Situacao.Titulo, Consulta.DataHoraConsulta, Consulta.Descricao
FROM Consulta
INNER JOIN Clinica ON Clinica.IdClinica = Clinica.IdClinica
INNER JOIN ProntuarioPaciente ON ProntuarioPaciente.IdProntuarioPaciente = ProntuarioPaciente.IdProntuarioPaciente
INNER JOIN Situacao ON Situacao.Titulo = Situacao.Titulo
WHERE IdMedico = 2;

--Dados da clinica
SELECT * FROM Consulta 


--Consultar os medicos pertecentes a uma area
CREATE PROCEDURE AreaDoMedico
(@ID INT)
AS
EXECUTE AreaDoMedico  2 

SELECT Medico.CRM, Usuario.Nome, Area.Titulo 
FROM Medico
INNER JOIN Area ON Medico.IdArea = Area.IdArea
INNER JOIN Usuario ON Usuario.Nome = Usuario.Nome
WHERE Area.IdArea = 2


--Retornar idade

CREATE PROCEDURE RetornarIdade
(@ID INT)
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) AS Idade
FROM ProntuarioPaciente
WHERE IdProntuarioPaciente = 8
EXECUTE RetornarIdade 1


--Vinculação de Prontuario e consulta

SELECT Medico.IdMedico, ProntuarioPaciente.IdProntuarioPaciente,Usuario.IdUsuario, Clinica.IdClinica, Situacao.IdSituacao, Consulta.DataHoraConsulta, ProntuarioPaciente.CPF, ProntuarioPaciente.IdEndereco, ProntuarioPaciente.IdTelefone, ProntuarioPaciente.RG
FROM ProntuarioPaciente
INNER JOIN Medico ON Medico.IdMedico = Medico.IdMedico
INNER JOIN Clinica ON Clinica.IdClinica = Clinica.IdClinica
INNER JOIN Situacao ON Situacao.IdSituacao = Situacao.IdSituacao
INNER JOIN Consulta ON Consulta.DataHoraConsulta = Consulta.DataHoraConsulta
INNER JOIN Usuario ON Usuario.IdUsuario = Usuario.IdUsuario
SELECT * FROM Consulta

--Vinculação de prontuario, consultas e medico

SELECT ProntuarioPaciente.IdProntuarioPaciente,Usuario.IdUsuario, ProntuarioPaciente.RG, ProntuarioPaciente.CPF, ProntuarioPaciente.IdEndereco, ProntuarioPaciente.IdTelefone,Consulta.IdConsulta,Consulta.IdClinica,Consulta.DataHoraConsulta,Consulta.Descricao, Medico.IdMedico,Medico.CRM,Area.IdArea
FROM ProntuarioPaciente
INNER JOIN Medico ON Medico.IdMedico = Medico.IdMedico

INNER JOIN Area ON Area.IdArea = Area.IdArea
INNER JOIN Usuario ON Usuario.IdUsuario = Usuario.IdUsuario


--converter data de nascimento em MM/DD/YYYY)
select ProntuarioPaciente.IdUsuario ,CONVERT(varchar(10), DataNascimento, 110) AS [mm/dd/yyyy]
from ProntuarioPaciente

--mostrar total de usuarios
select count(IdUsuario)
from Usuario
