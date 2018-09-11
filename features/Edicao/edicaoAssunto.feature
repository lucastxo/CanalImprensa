#language: pt
@edicaoAssunto
Funcionalidade: Editar Assunto

Eu como usuario do sistema
Quero editar um Assunto
Para vincular posteriormente


Contexto:Acessar tela de edicao de Assuntos
    Dado que eu esteja na tela de edicao de Assunto

    Cenário: Editar assunto com as informacoes corretas
    Quando eu edito um assunto com os seguintes dados:
    |nome   |Teste Assunto|
    Então a seguinte mensagem de edicao de assunto deve aparecer "Assunto alterado com sucesso!"

    Cenário: Editar assunto sem nome
    Quando eu edito um assunto com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de edicao de assunto deve aparecer "Descrição do Assunto não informada. Favor preenchê-la."

    Cenário: Editar assunto com nome já cadastrado
    Quando eu edito um assunto com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de edicao de assunto deve aparecer "Já existe um Assunto com esse nome, por favor escolher outro."

    Cenário: Editar situação do assunto
    Quando eu troco a situação do assunto
    Então a seguinte mensagem de edicao de assunto deve aparecer "Assunto alterado com sucesso!"

    Cenário: Editar situação do assunto para ativo
    Quando eu troco a situação do assunto para ativo
    Então a seguinte mensagem de edicao de assunto deve aparecer "Assunto alterado com sucesso!"