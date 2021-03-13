USE Pessoa;

INSERT INTO Pessoa(NomePessoa,DataNascimento, CPF, RG)
VALUES            ('Maria', '06/01/2004', '111.222.333-55', '12345678-9')
                 ,('Pedro', '01/01/1980', '999.333.555-10', '34567898-0');

INSERT INTO Telefone(Numero, Operadora, idPessoa)
VALUES              ('965455454', 'Vivo', 2)
                   ,('994982838', 'Tim', 1);

INSERT INTO Email(Email, idPessoa)
VALUES           ('maria12@hotmail.com', 1)
                ,('pedro90@gamil.com', 2);

INSERT INTO CNH(Foto, idPessoa)
VALUES         ('123.png', 1)
              ,('88.png', 2);