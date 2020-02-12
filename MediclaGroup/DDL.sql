--DDL

--Criando o database
CREATE DATABASE MedicalGroupT

--Inicializando o Database
USE MedicalGroupT

--Criando as tabelas

--CLINICA
CREATE TABLE Clinica (
IdClinica INT PRIMARY KEY IDENTITY,
HorarioAbertura TIME NOT NULL,
HorarioFechamento TIME NOT NULL,
CNPJ CHAR (14) NOT NULL,
RazaoSocial VARCHAR (200) NOT NULL,
NomeFantasia VARCHAR(200) NOT NULL,
IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
);

--SITUAÇÂO
CREATE TABLE Situacao (
IdSituacao INT PRIMARY KEY IDENTITY,
Titulo VARCHAR(200) NOT NULL
);

--Area de atuação
CREATE TABLE Area (
IdArea INT PRIMARY KEY IDENTITY,
Titulo VARCHAR (200) NOT NULL
);

--Tipo Usuario
CREATE TABLE TipoUsuario (
IdTipoUsuario INT PRIMARY KEY IDENTITY,
Titulo VARCHAR(200) NOT NULL
);

--Usuario
CREATE TABLE Usuario (
IdUsuario INT PRIMARY KEY IDENTITY,
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
Email VARCHAR (200),
Senha VARCHAR (200)
);

--Medico
CREATE TABLE Medico (
IdMedico INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
IdArea INT FOREIGN KEY REFERENCES Area (IdArea),
CRM VARCHAR (200)
);

--Prontuario Paciente
CREATE TABLE ProntuarioPaciente(
IdProntuarioPaciente INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
RG CHAR (9) NOT NULL,
CPF CHAR (11) NOT NULL,
IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
DataNascimento DATETIME2,
Telefone VARCHAR
);

--Consulta
CREATE TABLE Consulta (
IdConsulta INT PRIMARY KEY IDENTITY,
IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
IdProntuarioPaciente INT FOREIGN KEY REFERENCES ProntuarioPaciente (IdProntuarioPaciente),
IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
IdSituacao INT FOREIGN KEY REFERENCES Situacao (IdSituacao),
DataHoraConsulta DATETIME2,
Descricao VARCHAR (200)
);

--Endereço
CREATE TABLE Endereco(
IdEndereco INT PRIMARY KEY IDENTITY,
Endereco VARCHAR(200));

--Telefone
CREATE TABLE Telefone(
IdTelefone INT PRIMARY KEY IDENTITY,
Telefone VARCHAR (200)
);
