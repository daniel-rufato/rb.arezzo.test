#language: pt

@access_showcase
Funcionalidade: Acessar vitrine específica
      
    @select_showcase
    Esquema do Cenário: Acessar vitrine de calçados
      Dado que acesse a home
      Quando selecionar a vitrine de "<calçado>"

      Exemplos:
        | calçado |
        | TÊNIS   |
