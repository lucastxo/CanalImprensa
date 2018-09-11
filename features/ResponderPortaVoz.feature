#language: pt
@ResponderPortaVoz
Funcionalidade: Responder como Porta Voz

Eu como Porta Voz
Quero responder uma solicitacao
Para finalizar minha solicitação

Contexto:Acessar tela de solicitações porta voz
    Dado que eu esteja na tela de resposta como solicitante

    Cenário: Responder ao solicitante como porta voz com as informacoes corretas
    Dado que eu tenha uma solicitação cadastrada para responder e respondida 
    Quando eu respondo a solicitacao como porta voz com os seguintes dados:
    | resposta     | testestestestesteste |
    Então a seguinte mensagem de resposta a solicitacao como porta voz deve aparecer "Solicitação respondida com sucesso!"

    Cenário: Responder ao solicitante como porta voz sem resposta
    Quando eu respondo a solicitacao como porta voz com os seguintes dados:
    | resposta     ||
    Então a seguinte mensagem de resposta a solicitacao como porta voz deve aparecer "Campo de resposta em branco!"

    