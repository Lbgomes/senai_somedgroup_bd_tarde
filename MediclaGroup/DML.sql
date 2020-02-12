--DML

--Tipo Usuario
INSERT INTO TipoUsuario (Titulo)
VALUES ('Administrador'),('Medico'),('Paciente')
go


--Endereço
INSERT INTO Endereco (Endereco)
VALUES ('Rua a')
go

INSERT INTO Endereco (Endereco)
VALUES ('Rua b')
go

INSERT INTO Endereco (Endereco)
VALUES ('Rua c')
go


--Telefone
INSERT INTO Telefone (Telefone)
Values ('11948071571')
go

INSERT INTO Telefone (Telefone)
Values ('1127378959')
go


--Clinica
INSERT INTO Clinica (IdEndereco,HorarioAbertura,HorarioFechamento,CNPJ,RazaoSocial,NomeFantasia)
VALUES (1,'04:00:00','00:00:00',24445678912345,'Clinica Médica','Medical Group')

INSERT INTO Clinica (IdEndereco,HorarioAbertura,HorarioFechamento,CNPJ,RazaoSocial,NomeFantasia)
VALUES (2,'05:00:00','00:00:00',54321987654321,'Clinica Médica','Grupo Medico')


--Situação
INSERT INTO Situacao(Titulo)
VALUES ('Pendente'),('Realizada'),('Cancelada')


--Usuario
INSERT INTO Usuario (IdTipoUsuario,Email,Senha,Nome)
VALUES (1,'adm@amd.com','adm123','Administrador')

INSERT INTO Usuario (IdTipoUsuario,Email,Senha,Nome)
VALUES (2,'medico@132.com','medico123','Ray')

INSERT INTO Usuario (IdTipoUsuario,Email,Senha,Nome)
VALUES (3,'carlos@123.com','carlos123','Carlos')

--Area
INSERT INTO Area(Titulo)
VALUES ('Proctologia')
SELECT * FROM ProntuarioPaciente


--Médico
INSERT INTO Medico (IdUsuario,CRM,IdArea)
VALUES (2,4353453,2)


--Prontuario Paciente
INSERT INTO ProntuarioPaciente(IdUsuario,RG,CPF,DataNascimento,IdEndereco,IdTelefone)
VALUES (3,111111111,11111111111,'15/11/1990',2,2)
go

INSERT INTO ProntuarioPaciente(IdUsuario,RG,CPF,DataNascimento,IdEndereco,IdTelefone)
VALUES (3,111111111,11111111111,'15/11/1990',1,2)
go


--Consulta
INSERT INTO Consulta (IdMedico,IdProntuarioPaciente,IdClinica,IdSituacao, DataHoraConsulta,Descricao)
VALUES (1,6,1,1,'18/02/2020 20:20:00','Ele irá fazer algumas coisas na consulta')

