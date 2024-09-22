    
    ---EXECUTAR O CODIGO NO MYSQL - Linguegem sql-
    
    ---criando o banco de dados----
    CREATE DATABASE Clinicas 
    
    --criando a tabela ambulatorios---nova consulta-- 
    CREATE TABLE Ambulatorios( 
    id_amb  INT PRIMARY KEY,     
    amb_andar NUMERIC (3) NOT NULL, 
    amb_capacidade SMALLINT 
    ); 
    
    --criando a tabela medicos---nova consulta-- 
    CREATE TABLE medicos 
    ( 
    id_med INT PRIMARY KEY, 
    med_nome VARCHAR(255), 
    med_idade SMALLINT NOT NULL, 
    med_especialidade  CHAR (20), 
    med_cpf VARCHAR (11) UNIQUE, 
    med_cidade VARCHAR (255), 
    id_amb INT, 
    ---associar o médico com o ambulatório a partir da chave estrangeira----
    FOREIGN KEY (id_amb) REFERENCES Ambulatorios (id_amb) 
    ); 
     
    ----criando a tabela pacientes ---nova consulta---- 
    CREATE TABLE Pacientes 
    (  
    id_pac  INT PRIMARY KEY, 
    pac_nome VARCHAR (40) NOT NULL, 
    pac_idade SMALLINT NOT NULL, 
    pac_cpf VARCHAR (11) UNIQUE, 
    pac_cidade CHAR(30), 
    pac_doenca VARCHAR (40) NOT NULL 
    ); 
    
    
    ----criando a tabela consultas---nova consulta----------- 
    CREATE TABLE Consultas 
    (   
    id_con INT PRIMARY KEY, 
    id_med INT, 
    id_pac INT, 
    con_data DATE NOT NULL, 
    con_hora TIME NOT NULL, 
    ---associar a consulta  com o id-medico a partir da chave estrangeira--
    --associar o id-paciente com a consulta a partir da chave estrangeira---
    FOREIGN KEY (id_med) REFERENCES Medicos (id_med), 
    FOREIGN key (id_pac) REFERENCES Pacientes (id_pac) 
    
    ); 
    
    ----criando a tabela funcionarios-----nova consulta-------------  
    CREATE TABLE funcionarios 
    ( 
    
    id_func INT PRIMARY KEY, 
    func_nome VARCHAR(40) NOT NULL, 
    func_cidade VARCHAR(255), 
    func_cpf VARCHAR(11) UNIQUE, 
    --associar o funcionario com o ambulatorio a partir da chave estrangeira---
    FOREIGN KEY (id_amb) REFERENCES Ambulatorios (id_amb) 
    ); 
    
    ----inserindo os atributos para  ambulatorio-------nova consulta----------------- 
    INSERT INTO Ambulatorios (id_amb, amb_andar, amb_capacidade) 
    VALUES (1,1,30); 
    
    INSERT INTO Ambulatorios (id_amb, amb_andar, amb_capacidade) 
    VALUES (2,1,50); 
      
    INSERT INTO Ambulatorios (id_amb, amb_andar, amb_capacidade) 
    VALUES (3,2,25); 
    
    INSERT INTO Ambulatorios (id_amb, amb_andar, amb_capacidade) 
    VALUES (5,2,55); 
    
    
    ----inserindo os atributos para medicos -------nova consulta----------------- 
    INSERT INTO medicos(id_med, med_nome, med_idade, med_especialidade, med_cpf, med_cidade, id_amb) 
    VALUES (1, 'Joao', 40, 'ortopedia' ,'10000100000', 'Ribeirão preto', 1); 
    
    INSERT INTO medicos(id_med, med_nome, med_idade, med_especialidade, med_cpf, med_cidade, id_amb) 
    VALUES (2, 'Maria', 42, 'traumologia' ,'10000100001', 'Sao paulo', 2); 
    
    INSERT INTO medicos(id_med, med_nome, med_idade, med_especialidade, med_cpf, med_cidade, id_amb) 
    VALUES (3, 'Pedro', 51, 'pediatria' ,'10000100003' , 'Santos', 3); 
    
    INSERT INTO medicos(id_med, med_nome, med_idade, med_especialidade, med_cpf, med_cidade, id_amb) 
    VALUES (4, 'Carlos', 28, 'ortopedia', '10000100004', 'Campinas', 4); 
    
    INSERT INTO medicos(id_med, med_nome, med_idade, med_especialidade, med_cpf, med_cidade, id_amb) 
    VALUES (5, 'Marcia', 33, 'neurologia' ,'10000100005', 'Sorocaba', 5); 
    
    
    ----inserindo os atributos para pacientes-------nova consulta----------------- 
    INSERT INTO Pacientes(id_pac, pac_nome, pac_idade, pac_cidade, pac_cpf, pac_doenca) 
    VALUES (1, 'Ana', 20, 'Santos' ,'12345678910', 'gripe'); 
    
    INSERT INTO Pacientes(id_pac, pac_nome, pac_idade, pac_cidade, pac_cpf, pac_doenca) 
    VALUES (2, 'Paulo', 24, 'Sao Paulo', '12345678911', 'fratura'); 
    
    INSERT INTO Pacientes(id_pac, pac_nome, pac_idade, pac_cidade, pac_cpf, pac_doenca) 
    VALUES (3, 'Lucia', 30, 'campinas', '12345678912', 'Tendinite'); 
    
    INSERT INTO Pacientes(id_pac, pac_nome, pac_idade, pac_cidade, pac_cpf, pac_doenca) 
    VALUES (4, 'carlos', 28, 'Santos', '12345678913', 'sarampo'); 
    
    
    
    ----inserindo os atributos para consultas-------nova consulta----------------- 
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (1,1,1,'2016-10-11', '1400'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (2,1,4,'2016-10-12', '1000'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (3,2,1,'2016-10-13', '0900'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (4,2,2,'2016-10-14', '1400'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (5,1,1,'2016-10-15', '1700'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (6,3,1,'2016-10-16', '1800'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (7,3,3,'2016-10-17', '1000'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (8,3,4,'2016-10-18', '1300'); 
    
    INSERT INTO Consultas (id_con, id_med, id_pac,con_data, con_hora) 
    VALUES (9,4,4,'2016-10-19', '1930'); 
    
      
    ----ao digitar o comando abaixo, sera selecionado e eexibido a tabela funcionario---selecionar tabela em nova consulta------
    SELECT * FROM funcionarios; 
    
    
