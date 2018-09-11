#language: pt
@VinculoMidia
Funcionalidade: Vincular Midia com Veiculo

Eu como usuario do sistema
Quero vincular uma Midia com um Veiculo
Para atrelar uma informação a outra

Contexto:Acessar tela de midia e veiculo
    Dado que eu esteja na tela de areas e veiculo

    # Cenário: Vincular midia e veiculo com as informacoes corretas
    # Quando eu vinculo midia e veiculo com os seguintes dados:
    # |midia     |Teste Repetido|
    # |veiculo   |Teste Repetido|
    # Então a seguinte mensagem de vinculo de area e veiculo deve aparecer "Vínculo cadastrado com sucesso!"

    Cenário: Desvincular midia e veiculo com as informacoes corretas
    Quando eu desvinculo midia e veiculo com os seguintes dados:
    |midia     |Teste Repetido|
    |veiculo   |Teste Repetido|
    Então a seguinte mensagem de vinculo de area e veiculo deve aparecer "Vínculo cadastrado com sucesso!"

    Cenário: Vincular midia e veiculo sem midia
    Quando eu vinculo midia e veiculo com os seguintes dados:
    |midia     ||
    |veiculo   |Teste Repetido|
    Então a seguinte mensagem de vinculo de area e veiculo deve aparecer "Descrição da Mídia não informada. Favor preenchê-la."

    Cenário: Vincular midia e veiculo sem veiculo
    Quando eu vinculo midia e veiculo com os seguintes dados:
    |midia     |Teste Repetido|
    |veiculo   ||
    Então a seguinte mensagem de vinculo de area e veiculo deve aparecer "Descrição do Veículo de comunicação não informada. Favor preenchê-la."