USE Pessoa;

SELECT * FROM Pessoa
INNER JOIN Telefone
ON Pessoa.idPessoa = Telefone.idPessoa
INNER JOIN Email
ON Pessoa.idPessoa = Email.idPessoa
INNER JOIN CNH
ON Pessoa.idPessoa = CNH.idPessoa
ORDER BY Pessoa.NomePessoa desc;

SELECT * FROM Telefone;

SELECT * FROM Email;

SELECT * FROM CNH;