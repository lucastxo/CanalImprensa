#language: pt
@CadastroMensagem
Funcionalidade: Criar Mensagens

Eu como usuario do sistema
Quero criar uma Mensagem
Para editar posteriormente


Contexto:Acessar tela de mensagens
    Dado que eu esteja na tela de mensagens

    Cenário: Criar mensagem com as informacoes corretas
    Quando eu cadastro uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    | Teste Mensagem |
    Então a seguinte mensagem de cadastro de mensagem deve aparecer "Mensagem de Difusão enviada com sucesso!"

    Cenário: Criar mensagem sem natureza
    Quando eu cadastro uma mensagem com os seguintes dados:
    | natureza    ||
    | mensagem    | Teste Mensagem |
    Então a seguinte mensagem de cadastro de mensagem deve aparecer "Selecione uma Natureza"

    Cenário: Criar mensagem sem mensagem
    Quando eu cadastro uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    ||
    Então a seguinte mensagem de cadastro de mensagem deve aparecer "Mensagem de Difusão Coletiva não poderá ser enviada em branco"

    Cenário: Criar mensagem com a mensagem repetida
    Quando eu cadastro uma mensagem com os seguintes dados:
    | natureza    | Teste Repetido |
    | mensagem    | Teste Repetido |
    Então a seguinte mensagem de cadastro de mensagem deve aparecer "Mensagem já existente, favor alterar o texto."
