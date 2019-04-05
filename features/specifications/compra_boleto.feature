#language: pt
#encoding: utf-8

Funcionalidade: Finalizar compras - Boleto

  - Narrativa:
  Finalizar compras com as posibilidades de:
  boleto bancario

  Cenario: Validar compra com boleto

    Dado que estou na tela incial do site
    E faço o login
      | cpf         | senha  |
      | 96939248005 | 123456 |
    Quando faço uma busca por qualquer produto
      | produto |
      | tenis   |
    E seleciono o qualquer item do resultado
    E seleciono um tamanho e clico em comprar
    E clico em finalizar a compra
    E confirmo o pagamento
    Então finalizo a compra com opção de boleto bancário
    E confirmo que o pedido foi realizado







