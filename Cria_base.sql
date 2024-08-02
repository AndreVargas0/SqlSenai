-- DDL - Data Definition Language
	-- Linguagem de Definição de dados

create database projetodiario1;
use projetodiario1;

create table aluno(
	id int primary key auto_increment,
    ra char(8) not null unique

);

CREATE TABLE aluno (
    id int PRIMARY KEY auto_increment,
    ra char(8) NOT NULL
);

DESCRIBE aluno;

INSERT aluno(ra)values('00034549');
INSERT aluno(ra)values('00034547');
INSERT aluno (ra) VALUES ('00034549');
INSERT aluno (ra) VALUES ('00034550');
INSERT aluno (ra) VALUES ('00034551');
INSERT aluno (ra) VALUES ('00034552');
INSERT aluno (ra) VALUES ('00034553');
INSERT aluno (ra) VALUES ('00034554');
INSERT aluno (ra) VALUES ('00034555');
INSERT aluno (ra) VALUES ('00034556');
INSERT aluno (ra) VALUES ('00034557');
INSERT aluno (ra) VALUES ('00034558');
INSERT aluno (ra) VALUES ('00034559');
INSERT aluno (ra) VALUES ('00034560');
INSERT aluno (ra) VALUES ('00034561');
INSERT aluno (ra) VALUES ('00034562');
INSERT aluno (ra) VALUES ('00034563');
INSERT aluno (ra) VALUES ('00034564');
INSERT aluno (ra) VALUES ('00034565');
INSERT aluno (ra) VALUES ('00034566');
INSERT aluno (ra) VALUES ('00034567');
INSERT aluno (ra) VALUES ('00034568');
INSERT aluno (ra) VALUES ('00034569');
INSERT aluno (ra) VALUES ('00034570');
INSERT aluno (ra) VALUES ('00034571');
INSERT aluno (ra) VALUES ('00034572');
INSERT aluno (ra) VALUES ('00034573');
INSERT aluno (ra) VALUES ('00034574');
INSERT aluno (ra) VALUES ('00034575');
INSERT aluno (ra) VALUES ('00034576');
INSERT aluno (ra) VALUES ('00034577');
INSERT aluno (ra) VALUES ('00034578');
INSERT aluno (ra) VALUES ('00034579');
INSERT aluno (ra) VALUES ('00034580');

SELECT * FROM aluno;
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime,
    fk_aluno_id int
);

ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
 
 
SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;
