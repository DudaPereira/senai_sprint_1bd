USE Filmes;

INSERT INTO Generos(Nome)
VALUES             ('Romance')
                  ,('Comedia');

INSERT INTO Generos(Nome)
VALUES            ('Ação');

INSERT INTO Filmes(Titulo, idGenero)
VALUES            ('Simplesmente Acontece', 1)
                 ,('Gente Grande', 2)
				 ,('Diario de Uma Paixao', 1);


INSERT INTO Filmes(Titulo)
VALUES            ('HOMEM ARANHA');