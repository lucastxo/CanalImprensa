#language: pt
@edicaoResposta
Funcionalidade: Editar Resposta

Eu como usuario do sistema
Quero editar uma Resposta
Para vincular posteriormente


Contexto:Acessar tela de edicao de Resposta 
    Dado que eu esteja na tela de edicao de resposta

    Cenário: Editar resposta com as informacoes corretas
    Quando eu edito uma resposta com os seguintes dados:
    |categoria   |Teste Categoria|
    |resposta    |Teste Resposta |
    Então a seguinte mensagem de edicao de resposta deve aparecer "Resposta salva com sucesso!"

    Cenário: Editar resposta sem categoria
    Quando eu edito uma resposta com os seguintes dados:
    |categoria   ||
    |resposta    |Teste Resposta |
    Então a seguinte mensagem de edicao de resposta deve aparecer "Descrição de Categoria não informada"

    Cenário: Editar resposta sem resposta
    Quando eu edito uma resposta com os seguintes dados:
    |categoria   |Teste Categoria|
    |resposta    ||
    Então a seguinte mensagem de edicao de resposta deve aparecer "Descrição de Resposta não informada"

    Cenário: Editar resposta com categoria já cadastrada
    Quando eu edito uma resposta com os seguintes dados:
    |categoria   |Teste Repetido |
    |resposta    |Teste Repetido |
    Então a seguinte mensagem de edicao de resposta deve aparecer "por favor escolher outro."
