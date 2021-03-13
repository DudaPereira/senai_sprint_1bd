USE Optus;

INSERT INTO Artista(nomeArtista)
VALUES             ('Anitta')
                  ,('Rihanna');

INSERT INTO Usuario(NomeUsuario, Email, Senha, TipoPermissao)
VALUES             ('Maria', 'Maria12@gmail.com', '123', 'Adm')
                  ,('Luana', 'Luana33@gmail.com', '321', 'Comum');

INSERT INTO Estilo(NomeEstilo)
VALUES            ('Pop')
                 ,('Funk')
				 ,('Rap');

INSERT INTO Album(TituloAlbum, DataLancamento, Localizacao, Minutos, AtivoVisu, idEstilo, idArtista)
VALUES           ('RitmoPerfeito', '13/01/2015', 'Brasil', '30:14', 'Sim', 2, 1)
                ,('Anti', '27/01/2016', 'EUA', '15:58', 'Sim', 1, 2);

INSERT INTO AlbumEstilo(idAlbum, idEstilo)
VALUES                 (1, 1)
                      ,(2,3);
