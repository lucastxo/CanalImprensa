#language: pt
@PortaVoz
Funcionalidade: Enviar Porta Voz

Eu como usuario do sistema
Quero enviar um porta voz 
Para responder minha solicitação

Contexto:Acessar tela de solicitações pendentes
    Dado que eu esteja na tela de solicitações pendentes

    Cenário: Enviar porta voz com as informacoes corretas
    Dado que eu tenha uma solicitação cadastrada
    Quando eu envio porta voz com os seguintes dados:
    | comando      | C Com Soc Div Midias                           |
    | subordinadas | C Com Soc C Com Soc Div Midias SEC DE IMPRENSA |
    | voz          | Porta-voz da OPM                               |
    | providencias | testestestestesteste                           |
    | resposta     | Diretamente ao Jornalista                      |
    Então a seguinte mensagem de envio de porta voz deve aparecer "Providência foi enviada com sucesso!"

    Esquema do Cenario: Campos obrigatórios

        Quando eu envio porta voz com os seguintes dados:
        | comando      | <comando>      |
        | subordinadas | <subordinadas> |
        | voz          | <voz>          |
        | providencias | <providencias> |
        | resposta     | <resposta>     |
        Então a seguinte mensagem de cadastro de solicitacao deve aparecer "<saida>"

        Exemplos: 
        | comando              | subordinadas                                   | voz              | providencias         | resposta                  | saida                                                         |
        |                      |                                                |                  |                      |                           | Selecione o Comando e Subordinadas para enviar a solicitação! |
        | C Com Soc Div Midias |                                                |                  |                      |                           | Selecione o Comando e Subordinadas para enviar a solicitação! |
        | C Com Soc Div Midias | C Com Soc C Com Soc Div Midias SEC DE IMPRENSA |                  | testestestestesteste | Diretamente ao Jornalista | Nenhum destinatário selecionado                               |
        | C Com Soc Div Midias | C Com Soc C Com Soc Div Midias SEC DE IMPRENSA | Porta-voz da OPM |                      | Diretamente ao Jornalista | Campo Providências em branco.                                 |
        | C Com Soc Div Midias | C Com Soc C Com Soc Div Midias SEC DE IMPRENSA | Porta-voz da OPM | testestestestesteste |                           | Preencha os campos obrigatórios                               |
         


         