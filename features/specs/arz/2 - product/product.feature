#language: pt

@add_shoe
Funcionalidade:  Adicionar calçado

  @select_shoe
  Esquema do Cenário: Adicionar calçado no carrinho
    Dado que esteja na vitrine "<calçado>"
    Quando filtrar pela numeração "<tamanho>"
      E adicionar o "<calçado>" nº "<tamanho>" ao carrinho
      Então devo visualizar no carrinho

    Exemplos:
    | calçado | tamanho |
    | TÊNIS   | 40      |
