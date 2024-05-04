-- crie uma base de dados
-- crie tabelas nessa base de dados
-- em cada tabela, adicione atributos
CREATE TABLE socios (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR(30) NOT NULL,
  	idade INT NOT NULL,
  	endereco VARCHAR(100),
  	clube_id INT, -- chave estrangeira que referencia o id do clube ao qual o sócio pertence
  	FOREIGN KEY (clube_id) REFERENCES clube(id) -- define a chave estrangeira referenciando a tabela clube 
);

CREATE TABLE clube (
	id SERIAL PRIMARY KEY,
  	nome VARCHAR(50) NOT NULL,
  	cidade VARCHAR(50) NOT NULL
);

-- insira dados em cada tabela
INSERT INTO clube (nome, cidade) VALUES
	('Clube do Atlético MG', 'Belo Horizonte'),
    ('Clube CSCS', 'Belo Horizonte'),
    ('Clube dos Praças', 'Lafaiete');

INSERT INTO socios (nome, idade, endereco, clube_id) VALUES
	('Marley', 48, 'Rua do Galo, 13', 2),
    ('Andrezza', 41, 'Rua do Galo, 13', 2),
    ('Gabrielle', 24, 'Rua Dois, 113', 3);

-- utilize os comandos Joins para realizar consultas nas tabelas
SELECT socios.nome, socios.idade, clube.nome, clube.cidade
	from clube
    JOIN socios ON socios.clube_id = clube.id;
