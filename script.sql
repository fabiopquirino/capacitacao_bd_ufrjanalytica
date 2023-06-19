create table tipo_sanguineo(
    tipo_sanguineo_id int not null auto_increment,
    nome varchar(50) not null,
    primary key (tipo_sanguineo_id)
);

create table endereco (
    endereco_id int not null auto_increment,
    estado varchar(100) not null,
    municipio varchar(100) not null,
    bairro varchar(100) not null,
    primary key(endereco_id)
);

create table unidade (
    unidade_id int not null auto_increment,
    nome varchar(100) not null,
    endereco_id int not null,
    primary key (unidade_id),
    foreign key (endereco_id) references endereco(endereco_id)
);

create table especializacao(
    especializacao_id int not null auto_increment,
    nome varchar(50) not null,
    primary key(especializacao_id)
);

create table tipo_exame(
    tipo_exame_id int not null auto_increment,
    nome varchar(50) not null,
    primary key(tipo_exame_id)
);

create table paciente(
    paciente_id int not null auto_increment,
    nome varchar(100) not null,
    endereco_id int not null,
    data_nascimento date not null,
    tipo_sanguineo_id int,
    primary key (paciente_id),
    foreign key (endereco_id) references endereco(endereco_id),
    foreign key (tipo_sanguineo_id) references tipo_sanguineo(tipo_sanguineo_id)
);

create table medico(
    medico_id int not null auto_increment,
    nome varchar(100) not null,
    endereco_id int not null,
    unidade_id int not null,
    especializacao_id int not null,
    primary key (medico_id),
    foreign key (endereco_id) references endereco(endereco_id),
    foreign key (unidade_id) references unidade(unidade_id),
    foreign key (especializacao_id) references especializacao(especializacao_id)
);

create table enfermeiro(
    enfermeiro_id int not null auto_increment,
    nome varchar(100) not null,
    endereco_id int not null,
    unidade_id int not null,
    especializacao_id int not null,
    primary key (enfermeiro_id),
    foreign key (endereco_id) references endereco(endereco_id),
    foreign key (unidade_id) references unidade(unidade_id),
    foreign key (especializacao_id) references especializacao(especializacao_id)
);

create table consulta(
    consulta_id int not null auto_increment,
    medico_id int not null,
    paciente_id int not null,
    data_consulta date not null,
    primary key (consulta_id),
    foreign key (medico_id) references medico(medico_id),
    foreign key (paciente_id) references paciente(paciente_id)
);

create table exame(
    exame_id int not null auto_increment,
    enfermeiro_id int not null,
    paciente_id int not null,
    data_exame date not null,
    tipo_exame_id int not null,
    primary key (exame_id),
    foreign key (enfermeiro_id) references enfermeiro(enfermeiro_id),
    foreign key (paciente_id) references paciente(paciente_id),
    foreign key (tipo_exame_id) references tipo_exame(tipo_exame_id)
);

insert into tipo_sanguineo (nome) values ('o-');
insert into tipo_sanguineo (nome) values ('o+');
insert into tipo_sanguineo (nome) values ('a-');
insert into tipo_sanguineo (nome) values ('a+');
insert into tipo_sanguineo (nome) values ('b-');
insert into tipo_sanguineo (nome) values ('b+');
insert into tipo_sanguineo (nome) values ('ab-');
insert into tipo_sanguineo (nome) values ('ab+');

insert into especializacao (nome) values
('Clínico Geral'),
('Ortopedista'),
('Dermatologista'),
('Paramédico'),
('Centro Cirúrgico'),
('Neonatal')
;

insert into endereco (estado, municipio, bairro) values
('RJ', 'Rio de Janeiro', 'Tijuca'),
('SP', 'São Paulo', 'Liberdade'),
('MG', 'Belo Horizonte', 'Savassi');

insert into unidade (nome, endereco_id) values
('Hospital TJK', 1),
('Hospital LBD', 2),
('Hospital SVS', 3);

insert into tipo_exame (nome) values
('Hemograma'),
('Colesterol'),
('Endoscopia');

insert into paciente (nome, endereco_id, data_nascimento, tipo_sanguineo_id) values
('José Augusto', 1, '2001-01-01', null),
('Belo Pagodeiro', 2, '2002-02-02', 5),
('Matuê Santana', 3, '2003-03-03', 3);

insert into medico (nome, endereco_id, unidade_id, especializacao_id) values
('Leon Scott Kennedy', 1, 1, 3),
('Dr. Áuzio Varella', 2, 2, 2),
('Fátima Oliveira', 3, 3, 1);

insert into enfermeiro (nome, endereco_id, unidade_id, especializacao_id) values
('Fabiano Domingues', 1, 1, 4),
('German Cano', 2, 2, 5),
('Irineu', 3, 3, 6);

insert into consulta (medico_id, paciente_id, data_consulta) values
(1, 1, '2023-05-20'),
(3, 2, '2020-03-15'),
(2, 3, '2023-05-10');

insert into exame (enfermeiro_id, paciente_id, data_exame, tipo_exame_id) values
(3, 1, '2021-04-12', 2),
(1, 2, '2019-09-17', 3),
(1, 2, '2019-09-17', 3),
(2, 3, '2022-12-01', 1);
