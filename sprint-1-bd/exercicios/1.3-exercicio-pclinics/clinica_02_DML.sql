USE Clinica


INSERT INTO Clinica(Endereco, NomeClinc)
VALUES             ('Rua Maruara N10','PetLove')
                  ,('Rua Barão de Maua N80', 'Pet&Pet');

INSERT INTO Veterinario(NomeVet, CRM, Idade, idClinica)
VALUES                 ('Marco', 'A054000', '30',1)
                      ,('Luiza', 'A054008', '25', 2);

INSERT INTO Dono(NomeDono, Idade, TelefoneDono)
VALUES          ('Maria', '18', '965455454')
               ,('Luiza', '20', '994982838');

INSERT INTO Tipo(NomeTipo)
VALUES          ('Gato')
               ,('Cachorro');

INSERT INTO Raca(NomeRaca, idTipo)
VALUES          ('bulldog', 2)
               ,(' persa', 1)
			   ,('ShihTzu', 2);

INSERT INTO PET(NomePet, DataNascimento, idRaca, idDono)
VALUES         ('Zig', '30/01/2021', 1, 1)
              ,('Zeus', '02/03/2021', 2,2);

INSERT INTO Atendimento(HoraAtendimento,FichaCadastroPet, DataAtendimento, idPet, idVeterinario)
VALUES                 ('12:30', 'Vacina', '14/03/2021', 2,1)
                      ,('14:00', 'Pata Quebrada', '12/03/2021', 1,2);