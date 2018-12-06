#language: pt
@CadastroResposta
Funcionalidade: Criar Respostas

Eu como usuario do sistema
Quero criar uma resposta
Para editar posteriormente


Contexto:Acessar tela de respostas
    Dado que eu esteja na tela de respostas

    Cenário: Criar resposta com as informacoes corretas
    Quando eu cadastro uma resposta com os seguintes dados:
    |categoria   |Teste Categoria|
    |resposta    |Teste Resposta |
    Então a seguinte mensagem de cadastro de resposta deve aparecer "Resposta salva com sucesso!"

    Cenário: Criar resposta sem categoria
    Quando eu cadastro uma resposta com os seguintes dados:
    |categoria   ||
    |resposta    |Teste Resposta|
    Então a seguinte mensagem de cadastro de resposta deve aparecer "Descrição de Categoria não informada"

    Cenário: Criar resposta sem resposta
    Quando eu cadastro uma resposta com os seguintes dados:
    |categoria   |Teste Categoria|
    |resposta    ||
    Então a seguinte mensagem de cadastro de resposta deve aparecer "Descrição de Resposta não informada"

    Cenário: Criar resposta com nome já cadastrado
    Quando eu cadastro uma resposta com os seguintes dados:
    |categoria   |Teste Repetido |
    |resposta    |Teste Repetido |
    Então a seguinte mensagem de cadastro de resposta deve aparecer "favor escolher outro."