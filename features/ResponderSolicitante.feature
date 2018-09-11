#language: pt
@ResponderSolicitante
Funcionalidade: Responder ao Solicitante

Eu como usuario do sistema
Quero Responder ao solicitante
Para finalizar minha solicitação

Contexto:Acessar tela de solicitações pendentes
    Dado que eu esteja na tela de resposta ao solicitante

    Cenário: Responder ao solicitante com as informacoes corretas
    Dado que eu tenha uma solicitação cadastrada para responder
    Quando eu respondo a solicitacao com os seguintes dados:
    | resposta     | testestestestesteste |
    Então a seguinte mensagem de resposta a solicitacao deve aparecer "Resposta foi enviada com sucesso!"

    Cenário: Responder ao solicitante sem resposta
    Quando eu respondo a solicitacao com os seguintes dados:
    | resposta     | |
    Então a seguinte mensagem de resposta a solicitacao deve aparecer "Campo Resposta ao Solicitante em branco"
