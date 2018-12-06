#language: pt
@edicaoMensagem
Funcionalidade: Editar Mensagem

Eu como usuario do sistema
Quero editar uma Mensagem
Para vincular posteriormente


Contexto:Acessar tela de edicao de Mensagem 
    Dado que eu esteja na tela de edicao de M

    Cenário: Editar mensagem com as informacoes corretas
    Quando eu edito uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    | Teste Mensagem |
    Então a seguinte mensagem de edicao de mensagem deve aparecer "Mensagem de Difusão enviada com sucesso!"

    Cenário: Editar mensagem sem mensagem
    Quando eu edito uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    ||
    Então a seguinte mensagem de edicao de mensagem deve aparecer "Mensagem de Difusão Coletiva não poderá ser enviada em branco"

    Cenário: Editar mensagem com mensagem já cadastrada
    Quando eu edito uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    | Teste Repetido |
    Então a seguinte mensagem de edicao de mensagem deve aparecer "favor alterar o texto."