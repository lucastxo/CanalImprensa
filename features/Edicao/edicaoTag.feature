#language: pt
@edicaoTag
Funcionalidade: Editar Tags

Eu como usuario do sistema
Quero editar uma Tag
Para vincular posteriormente


Contexto:Acessar tela de edicao de Tags
    Dado que eu esteja na tela de edicao de Tag

    Cenário: Editar tag com as informacoes corretas
    Quando eu edito uma tag com os seguintes dados:
    |nome   |Teste Tag|
    Então a seguinte mensagem de edicao de tag deve aparecer "Tag alterada com sucesso!"

    Cenário: Editar tag sem nome
    Quando eu edito uma tag com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de edicao de tag deve aparecer "Descrição da tag não informada. Favor preenchê-la."

    Cenário: Editar tag com nome já cadastrado
    Quando eu edito uma tag com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de edicao de tag deve aparecer "Já existe uma Tag com essa descrição, favor escolher outra."

    Cenário: Editar situação do tag
    Quando eu troco a situação do tag
    Então a seguinte mensagem de edicao de tag deve aparecer "Tag alterada com sucesso!"

    Cenário: Editar situação do tag para ativo
    Quando eu troco a situação do tag para ativo
    Então a seguinte mensagem de edicao de tag deve aparecer "Tag alterada com sucesso!"