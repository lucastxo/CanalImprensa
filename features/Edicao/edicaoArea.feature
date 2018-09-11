#language: pt
@edicaoArea
Funcionalidade: Editar Area de interesse

Eu como usuario do sistema
Quero editar uma Area de interessa
Para vincular posteriormente


Contexto:Acessar tela de edicao de Areas
    Dado que eu esteja na tela de edicao de Areas

    Cenário: Editar area com as informacoes corretas
    Quando eu edito uma area com os seguintes dados:
    |nome   |Teste Area|
    Então a seguinte mensagem de edicao de area deve aparecer "Área de Interesse alterada com sucesso!"

    Cenário: Editar area sem nome
    Quando eu edito uma area com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de edicao de area deve aparecer "Descrição da Área de Interesse não informada. Favor preenchê-la."

    Cenário: Editar area com nome já cadastrado
    Quando eu edito uma area com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de edicao de area deve aparecer "Já existe uma Área de Interesse com esse nome, por favor escolher outro."

    Cenário: Editar situação do area
    Quando eu troco a situação do area
    Então a seguinte mensagem de edicao de area deve aparecer "Área de Interesse alterada com sucesso!"

    Cenário: Editar situação do area para ativo
    Quando eu troco a situação do area para ativo
    Então a seguinte mensagem de edicao de area deve aparecer "Área de Interesse alterada com sucesso!"