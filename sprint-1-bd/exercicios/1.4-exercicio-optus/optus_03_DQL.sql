USE Optus;

SELECT * FROM Artista;

SELECT * FROM Usuario;

SELECT * FROM Estilo;

SELECT * FROM Album;

SELECT * FROM AlbumEstilo;

SELECT Usuario.NomeUsuario, Usuario.TipoPermissao FROM Usuario;

SELECT Album.DataLancamento, Album.TituloAlbum FROM Album WHERE Album.DataLancamento > '2014';

SELECT Usuario.Email, Usuario.Senha FROM Usuario;

SELECT Album.AtivoVisu, Artista.nomeArtista,Estilo.NomeEstilo FROM Album
INNER JOIN Artista
ON Album.idArtista = Artista.idArtista
INNER JOIN Estilo
ON Album.idEstilo = Estilo.idEstilo;