#language: pt
@CadastroArea
Funcionalidade: Criar Area de interesse

Eu como usuario do sistema
Quero criar uma area
Para editar posteriormente


Contexto:Acessar tela de areas
    Dado que eu esteja na tela de areas

    Cenário: Criar area com as informacoes corretas
    Quando eu cadastro uma area com os seguintes dados:
    |nome   |Teste Area|
    Então a seguinte mensagem de cadastro de area deve aparecer "Área de Interesse cadastrada com sucesso!"

    Cenário: Criar area sem nome
    Quando eu cadastro uma area com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de cadastro de area deve aparecer "Descrição da Área de Interesse não informada. Favor preenchê-la."

    Cenário: Criar area com nome já cadastrado
    Quando eu cadastro uma area com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de cadastro de area deve aparecer "Já existe uma Área de Interesse com esse nome, por favor escolher outro."