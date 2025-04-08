
USE escola;

CREATE TABLE  Curso (
	CodCurso CHAR (3) NOT NULL,
	Nome VARCHAR(20),
	Mensalidade Numeric (10,2),
	PRIMARY KEY (CodCurso)
);


CREATE TABLE Aluno (
  RA CHAR (9) NOT NULL PRIMARY KEY,
  RG CHAR(9) NOT NULL,
  Nome CHAR(30) NOT NULL,
  CodCurso CHAR(3) NOT NULL,
    FOREIGN KEY (CodCurso) REFERENCES Curso (CodCurso)
    );
  
 
  CREATE TABLE Disciplina (
  CodDisc CHAR (9) NOT NULL,
  Nome CHAR(9) NOT NULL,
  CodCurso CHAR(30) NOT NULL,
  NroCreditos INT,
  PRIMARY KEY (CodDisc),
    FOREIGN KEY (CodCurso) REFERENCES Curso (CodCurso)
    );
    
    
CREATE TABLE Boletim (
	RA CHAR (9) NOT NULL,
	CodDisc CHAR(9) NOT NULL,
	Nota Decimal(5,2) ,
  PRIMARY KEY (RA,CodDisc),
    FOREIGN KEY (RA) REFERENCES Aluno (RA),
    FOREIGN KEY (CodDisc) REFERENCES Disciplina (CodDisc)
    );
    
	INSERT INTO Curso VALUES
	('AS','ANALISE DE SISTEMAS',1000);  
	INSERT INTO Curso VALUES
	('CC','CIENCIA DA COMPUTACAO',950); 
	INSERT INTO Curso VALUES
	('SI','SISTEMAS DA INFORMACAO',800);   
   

    INSERT INTO Aluno VALUES
    ('123','12345','BIANCA MARIA PEDROSA','AS'), 
    ('212','21234','TATIANA CITTON','AS'), 
    ('221','22145','ALEAXANDRE PEDROSA','CC'), 
    ('231','23144','ALEXANDRE MONTEIRO','CC'), 
    ('321','32111','MARCIA RIBEIRO','CC'), 
    ('661','66123','JUSSARA MARANDOLA','SI'), 
    ('765','76512','WALTER RODRIGUES','SI'); 
    
    
    INSERT INTO Disciplina VALUES
	('BD','BANCO DE DADOS','CC',4);
     INSERT INTO Disciplina VALUES
	('BDA','BANCO DE DADOS AVANCADOS','CC',6);
     INSERT INTO Disciplina VALUES
	('BDOO','BANCO DE DADOS O OBJETOS','SI',4);
     INSERT INTO Disciplina VALUES
	('BDS','SISTEMAS DE BANCO DE DADOS','AS',4);
     INSERT INTO Disciplina VALUES
	('DBD','DESENVOLVIMENTO BANCO DE DADOS','SI',6);
     INSERT INTO Disciplina VALUES
	('IBD','INTRODUCAO A BANCO DE DADOS','AS',2);
    
    
	INSERT INTO Boletim VALUES ('123','BDS',10);
	INSERT INTO Boletim VALUES ('212','IBD',7.5);
	INSERT INTO Boletim VALUES ('231','BD',9);
	INSERT INTO Boletim VALUES ('231','BDA',9.6);
	INSERT INTO Boletim VALUES ('661','DBD',8);
	INSERT INTO Boletim VALUES ('765','DBD',6);



   
    
   