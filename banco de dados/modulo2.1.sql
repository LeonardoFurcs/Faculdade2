CREATE TABLE CLIENTE (
	idcliente int NOT NULL,
    nome char(90) NOT NULL,
    datanascimento date NOT NULL,
    CPF char(12) NOT NULL,
    email char(50) NOT NULL,
    telefone char(12) NULL,
    PRIMARY KEY (idcliente) );
CREATE TABLE CURSO (
	idcurso int NOT NULL,
    nome char(90) NOT NULL,
    cargahoraria int NOT NULL,
    descricao char (120) NOT NULL,
    PRIMARY KEY (idcurso) );
CREATE TABLE INSCRICAO (
	idcurso int NOT NULL,
    idcliente int NOT NULL,
    datainscricao date NOT NULL,
    datacancelamento date NULL,
    PRIMARY KEY (idcurso, idcliente),
    FOREIGN KEY (idcliente) REFERENCES CLIENTE (idcliente),
    FOREIGN KEY (idcurso) REFERENCES CURSO (idcurso) );
    
    