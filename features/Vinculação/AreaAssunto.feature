#language: pt
@VinculoArea
Funcionalidade: Vincular Area com Assunto

Eu como usuario do sistema
Quero vincular uma Area com um Assunto
Para atrelar uma informação a outra

Contexto:Acessar tela de Area e assunto
    Dado que eu esteja na tela de area e assunto

    # Cenário: Vincular area e assunto com as informacoes corretas
    # Quando eu vinculo area e assunto com os seguintes dados:
    # |midia     |Teste Repetido|
    # |veiculo   |Teste Repetido|
    # Então a seguinte mensagem de vinculo de area e veiculo deve aparecer "Vínculo cadastrado com sucesso!"

    Cenário: Desvincular area e assunto com as informacoes corretas
    Quando eu desvinculo area e assunto com os seguintes dados:
    |area      |Teste Repetido|
    |assunto   |Teste Repetido|
    Então a seguinte mensagem de vinculo de area e assunto deve aparecer "Vínculo cadastrado com sucesso!"

    Cenário: Vincular area e assunto sem area
    Quando eu vinculo area e assunto com os seguintes dados:
    |area      ||
    |assunto   |Teste Repetido|
    Então a seguinte mensagem de vinculo de area e assunto deve aparecer "Descrição da Área de Interesse não informada. Favor preenchê-la."

    Cenário: Vincular area e assunto sem assunto
    Quando eu vinculo area e assunto com os seguintes dados:
    |area      |Teste Repetido|
    |assunto   ||
    Então a seguinte mensagem de vinculo de area e assunto deve aparecer "Descrição do Assunto não informada. Favor preenchê-la."