# 1. Comandos básicos de banco

### Criar banco

```sql
CREATE DATABASE poc_git;
```

### Ver bancos existentes

```sql
SHOW DATABASES;
```

### Usar um banco

```sql
USE poc_git;
```

### Apagar banco

```sql
DROP DATABASE poc_git;
```

---

# 2. Comandos de tabela

### Criar tabela

```sql
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Ver tabelas do banco

```sql
SHOW TABLES;
```

### Ver estrutura da tabela

```sql
DESCRIBE usuarios;
```

ou

```sql
SHOW COLUMNS FROM usuarios;
```

### Apagar tabela

```sql
DROP TABLE usuarios;
```

---

# 3. Inserção de dados

### Inserir registro

```sql
INSERT INTO usuarios (nome, email)
VALUES ('Joao', 'joao@email.com');
```

### Inserir múltiplos registros

```sql
INSERT INTO usuarios (nome, email)
VALUES 
('Maria', 'maria@email.com'),
('Carlos', 'carlos@email.com');
```

---

# 4. Consulta de dados

### Ver todos os registros

```sql
SELECT * FROM usuarios;
```

### Selecionar colunas específicas

```sql
SELECT nome, email FROM usuarios;
```

### Filtrar resultados

```sql
SELECT * FROM usuarios
WHERE nome = 'Joao';
```

### Ordenar resultados

```sql
SELECT * FROM usuarios
ORDER BY nome ASC;
```

### Limitar quantidade de resultados

```sql
SELECT * FROM usuarios
LIMIT 10;
```

---

# 5. Atualização de dados

### Atualizar registro

```sql
UPDATE usuarios
SET email = 'novo@email.com'
WHERE id = 1;
```

⚠️ Sempre use `WHERE`, senão atualiza **toda a tabela**.

---

# 6. Remover dados

### Deletar registro

```sql
DELETE FROM usuarios
WHERE id = 1;
```

---

# 7. Limpar tabela inteira

```sql
TRUNCATE TABLE usuarios;
```

Diferença:

| Comando    | Efeito                    |
| ---------- | ------------------------- |
| `DELETE`   | remove linhas             |
| `TRUNCATE` | apaga tudo e reinicia IDs |

---

# 8. Alterar tabela

### Adicionar coluna

```sql
ALTER TABLE usuarios
ADD idade INT;
```

### Remover coluna

```sql
ALTER TABLE usuarios
DROP COLUMN idade;
```

### Renomear coluna

```sql
ALTER TABLE usuarios
CHANGE nome nome_completo VARCHAR(150);
```

---

# 9. Contagem de registros

```sql
SELECT COUNT(*) FROM usuarios;
```

---

# 10. Busca parcial

```sql
SELECT * FROM usuarios
WHERE nome LIKE '%Jo%';
```

Isso encontra:

```
Joao
Jorge
Joana
```

---

# 11. Comando extremamente útil

Ver tudo da tabela:

```sql
SELECT * FROM usuarios;
```

Você vai usar isso **o tempo todo**.

---

# 12. Script SQL típico para sua POC

Exemplo que você poderia salvar:

```sql
CREATE DATABASE poc_git;

USE poc_git;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO usuarios (nome, email)
VALUES ('Joao', 'joao@email.com');

SELECT * FROM usuarios;
```

---

# 13. Um comando muito útil para debugging

```sql
SHOW CREATE TABLE usuarios;
```

Ele mostra **exatamente como a tabela foi criada**.

---