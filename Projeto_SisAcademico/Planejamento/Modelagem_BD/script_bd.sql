-- SCRIPT DO BANCO DE DADOS DE NOSSO PROJETINHO

-- TABELA "CURSO":
CREATE TABLE tb_curso(
    id_curso INT NOT NULL PRIMARY KEY
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1 INCREMENT BY 1),
    nome_curso VARCHAR(90) NOT NULL,
    tipo_curso VARCHAR(50) NOT NULL
)

-- TABELA "ALUNO":
CREATE TABLE tb_aluno(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1),
    ra INT NOT NULL,
    nome VARCHAR(100),
    id_curso INT,
     CONSTRAINT fk_aluno_curso FOREIGN KEY(id_curso) REFERENCES tb_curso
)