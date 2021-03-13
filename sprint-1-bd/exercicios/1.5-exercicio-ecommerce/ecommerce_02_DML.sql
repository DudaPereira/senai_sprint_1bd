USE Ecommerce;

INSERT INTO Loja(Nome, Endereco, Telefone, CNPJ)
VALUES          ('DudaBeleza', 'Rua Maruara N10',  '994982838', '000.567.980/0001-50')
               ,('LuanaBeleza', 'Rua Barão de Maua N80', '965455454', '000.123.314/0001-24');

INSERT INTO Categoria(NomeCat, idLoja)
VALUES               ('Beleza', 2 )
                    ,('Higiene', 1);

INSERT INTO SubCategoria(NomeSub, idCategoria)
VALUES                  ('Sabonete', 2)
                       ,('Batom', 1);

INSERT INTO Cliente(NomeCliente, RG, CPF, TelefoneC)
VALUES             ('Eduarda','12 345 678-9' , '000.000.000-11', '965455454')
                  ,('Nicole', '13 543 876-1', '111.111.111-00', '994982838');

INSERT INTO Pedido(Quantidade, NotaFisc, idCliente)
VALUES            ('5', '000.000.011', 2)
                 ,('3', '280.120.130', 1);

INSERT INTO Produto(NomeProd, Preco, Validade, idSubCategoria, idPedido)
VALUES             ('BatomMatte', '$17,95', '12/10/2021', 2, 1)
                  ,('SaboneteLiquido', '$6,54', '15/10/2021', 1,2);

INSERT INTO PedidoProduto(idPedido, idProduto)
VALUES                   (1, 2)
                        ,(2, 1);