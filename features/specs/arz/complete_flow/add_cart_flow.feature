#language: pt

@add_cart_flow
Funcionalidade: Adicionar 2 calçados ao carrinho

  @add_cart
  Esquema do Cenário: Adicionar calçados
    Dado que esteja na vitrine "<calçado>"
    Quando filtrar pela numeração "<tam1>"
      E adicionar o "<calçado>" nº "<tam1>" ao carrinho
      E visualizar no carrinho
      E continuar comprando
      E filtrar pela numeração "<tam2>"
      E adicionar o "<calçado>" nº "<tam2>" ao carrinho
      E visualizar no carrinho
      Então validar carrinho
      
    Exemplos:
    | calçado | tam1 | tam2 |
    | TÊNIS   | 40   | 36   |