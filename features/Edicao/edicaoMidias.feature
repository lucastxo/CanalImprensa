#language: pt
@edicaoMidia
Funcionalidade: Editar Midias

Eu como usuario do sistema
Quero editar uma midia
Para vincular posteriormente


Contexto:Acessar tela de edicao de midias
    Dado que eu esteja na tela de edicao de midias

    Cenário: Editar midia com as informacoes corretas
    Quando eu edito uma midia com os seguintes dados:
    |nome   |Teste SBT|
    Então a seguinte mensagem de aviso deve aparecer "Mídia alterada com sucesso!"

    Cenário: Editar midia sem nome
    Quando eu edito uma midia com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de aviso deve aparecer "Descrição da Mídia não informada. Favor preenchê-la."

    Cenário: Editar midia com nome já cadastrado
    Quando eu edito uma midia com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de aviso deve aparecer "Já existe uma mídia com esse nome, favor escolher outro."

    Cenário: Editar situação da midia
    Quando eu troco a situação da midia
    Então a seguinte mensagem de aviso deve aparecer "Mídia alterada com sucesso!"

    Cenário: Editar situação da midia para ativo
    Quando eu troco a situação da midia para ativo
    Então a seguinte mensagem de aviso deve aparecer "Mídia alterada com sucesso!"