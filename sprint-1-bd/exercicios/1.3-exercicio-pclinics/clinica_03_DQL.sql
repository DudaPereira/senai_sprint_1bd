USE Clinica;

SELECT * FROM Clinica;

SELECT * FROM Veterinario;

SELECT * FROM Dono;

SELECT * FROM Tipo;

SELECT * FROM Raca;

SELECT * FROM Pet;

SELECT * FROM Atendimento;

SELECT Veterinario.NomeVet, Veterinario.CRM, Clinica.NomeClinc From Veterinario
INNER JOIN Clinica
ON Clinica.idClinica = Veterinario.idClinica
WHERE NomeClinc LIKE 'Pet&Pet';

SELECT Raca.NomeRaca FROM Raca WHERE NomeRaca LIKE 'S_%';
SELECT Tipo.NomeTipo FROM Tipo WHERE NomeTipo LIKE '%_O';

SELECT Pet.NomePet, Dono.NomeDono FROM Pet 
INNER JOIN Dono
ON Dono.idDono = Pet.idPet;

SELECT Atendimento.idVeterinario, Veterinario.NomeVet, Pet.NomePet, Raca.NomeRaca, Tipo.NomeTipo, Dono.NomeDono, Clinica.NomeClinc FROM Atendimento
INNER JOIN Veterinario
ON Atendimento.idVeterinario = Veterinario.idVeterinario
INNER JOIN Pet
ON Atendimento.idPet = Pet.idPet
INNER JOIN Raca
ON Raca.idRaca = Pet.idRaca
INNER JOIN Tipo
ON Tipo.idTipo = Raca.idRaca
INNER JOIN Dono
ON Dono.idDono = Pet.idDono
INNER JOIN Clinica
ON Clinica.idClinica = Veterinario.idClinica;