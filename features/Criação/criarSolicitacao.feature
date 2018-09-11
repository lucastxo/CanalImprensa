#language: pt
@CadastroSolicitacao
Funcionalidade: Criar Solicitacao

Eu como usuario do sistema
Quero criar uma Solicitacao
Para utilizar posteriormente

Contexto:Acessar tela de cadastro de Solicitacao
    Dado que eu esteja na tela de cadastro de Solicitacao

    Cenário: Criar uma solicitacao com as informacoes corretas
    Quando eu cadastro uma solicitacao com os seguintes dados:
    | midia            | Teste Repetido     |
    | veiculo          | Teste Repetido     |
    | jornalista       | Teste Nome         |
    | area             | Teste Repetido     |
    | assunto          | Teste Repetido     |
    | tags             | Teste Repetido     |
    | texto            | Teste Texto        |
    | data             | 1                  |
    | hora             | 1                  |
    Então a seguinte mensagem de cadastro de solicitacao deve aparecer "Pedido de informação enviado com sucesso!"


    Esquema do Cenario: Campos obrigatórios

        Quando eu cadastro uma solicitacao com os seguintes dados:
        | midia            | <midia>        |
        | veiculo          | <veiculo>      |
        | jornalista       | <jornalista>   |
        | area             | <area>         |
        | assunto          | <assunto>      |
        | tags             | Teste Repetido |
        | texto            | <texto>        |
        | data             | <data>         |
        | hora             | <hora>         |
        Então a seguinte mensagem de cadastro de solicitacao deve aparecer "<saida>"

        Exemplos: 
        | midia          | veiculo        | jornalista     | area           | assunto        | texto       | data | hora | saida                                                                      |
        |                |                |                |                |                | Teste Texto | 1    | 1    | Nenhuma Mídia selecionada. Por favor selecionar uma opção.                 | 
        | Teste Repetido |                |                |                |                | Teste Texto | 1    | 1    | Nenhum Veículo de Comunicação selecionado. Por favor selecionar uma opção. |
        | Teste Repetido | Teste Repetido |                |                |                | Teste Texto | 1    | 1    | Nenhum Jornalista selecionado. Por favor selecionar uma opção.             |
        | Teste Repetido | Teste Repetido | Teste Nome     |                |                | Teste Texto | 1    | 1    | Nenhuma Área de Interesse selecionada. Por favor selecionar uma opção.     |
        | Teste Repetido | Teste Repetido | Teste Nome     | Teste Repetido |                | Teste Texto | 1    | 1    | Nenhum Assunto selecionado. Por favor selecionar uma opção.                |
        | Teste Repetido | Teste Repetido | Teste Nome     | Teste Repetido | Teste Repetido |             | 1    | 1    | Texto da Solicitação não informado. Favor preenchê-lo.                     |
        | Teste Repetido | Teste Repetido | Teste Nome     | Teste Repetido | Teste Repetido | Teste Texto | 0    | 1    | Prazo não informado.                                                       |
        | Teste Repetido | Teste Repetido | Teste Nome     | Teste Repetido | Teste Repetido | Teste Texto | 1    | 0    | Prazo não informado.                                                       | 

   