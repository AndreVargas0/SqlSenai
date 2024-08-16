create database projetodiario1;

create table aluno(
	id int primary key auto_increment,
    ra char(8) not null unique,
	nome VARCHAR(80),
    tempoestudo INT not null,
    rendafamiliar DECIMAL(10, 2)
);

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
    
CREATE TABLE avaliacao (
    id int PRIMARY KEY auto_increment,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int NOT NULL
);

ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

ALTER TABLE avaliacao MODIFY nota1 INT;

ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id);

INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345695', 'Ana Silva', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345696', 'Bruno Oliveira', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345697', 'Carla Souza', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345698', 'Daniel Costa', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345699', 'Elaine Martins', 8, 2300.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345700', 'Fernando Lima', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345701', 'Gabriela Almeida', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345702', 'Hugo Ferreira', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345703', 'Isabela Pereira', 10, 2400.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345704', 'João Santos', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345705', 'Karina Rodrigues', 9, 2200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345706', 'Lucas Mendes', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345707', 'Mariana Silva', 11, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345708', 'Nicolas Oliveira', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345709', 'Olga Ramos', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345710', 'Paulo Henrique', 7, 2100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345711', 'Queila Santos', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345712', 'Rafael Almeida', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345713', 'Sabrina Costa', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345714', 'Tiago Lima', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345715', 'Ursula Martins', 9, 2300.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345716', 'Victor Ferreira', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345717', 'Wanda Pereira', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345718', 'Xavier Rodrigues', 16, 3200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345719', 'Yara Silva', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345720', 'Zé Oliveira', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345721', 'André Costa', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345722', 'Beatriz Martins', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345723', 'Cláudio Lima', 9, 2200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345724', 'Daniele Souza', 11, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345725', 'Eduardo Santos', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345726', 'Flávia Almeida', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345727', 'Gustavo Ramos', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345728', 'Heloísa Pereira', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345729', 'Igor Ferreira', 10, 2400.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345730', 'Juliana Santos', 15, 3200.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345731', 'Kátia Oliveira', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345732', 'Leonardo Silva', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345733', 'Marcos Costa', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345734', 'Natália Almeida', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345735', 'Otávio Lima', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345736', 'Priscila Rodrigues', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345737', 'Quésia Martins', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345738', 'Rodrigo Almeida', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345739', 'Sônia Santos', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345740', 'Tales Oliveira', 13, 2800.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345741', 'Uélio Lima', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345742', 'Vera Costa', 15, 3000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345743', 'Wellington Silva', 10, 2500.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345744', 'Xuxa Almeida', 12, 2700.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345745', 'Yuri Rodrigues', 14, 2900.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345746', 'Zilda Santos', 16, 3100.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345666', 'Luiz Lima', 110, 1000.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345747', 'Alan Costa', 11, 2600.00);
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES ('12345748', 'Bárbara Lima', 13, 2800.00);

INSERT INTO diariobordo (texto, datahora, fk_aluno_id) VALUES
('O professor explicou bem o conceito de álgebra linear', '2024-08-01 10:45:00', 14),
('Fizemos uma atividade em grupo sobre sustentabilidade', '2024-08-02 14:30:00', 15),
('A revisão para a prova de história foi muito produtiva', '2024-08-03 11:00:00', 13),
('Tivemos uma aula prática de laboratório de química', '2024-08-04 13:15:00', 16),
('Discutimos a importância da literatura no desenvolvimento crítico', '2024-08-05 09:00:00', 14),
('A aula de educação física foi cansativa, mas divertida', '2024-08-06 16:20:00', 17),
('Aprendemos sobre técnicas de programação em Python', '2024-08-07 12:00:00', 15);

INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(10,10,8,9,10);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(10,10,10,10,7);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(5,3,7,4,4);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(1,2,6,1,3);
INSERT avaliacao(nota1,nota2,nota3,nota4,fk_aluno_id)VALUES(5,5,5,5,2);
