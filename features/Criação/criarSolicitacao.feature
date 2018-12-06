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
    | midia            | Globo                                        |
    | veiculo          | Televisão                                    |
    | jornalista       | Evaristo Costa                               |
    | area             | criminalidade                                |
    | assunto          | O uso de tecnologias no trabalho do policial |
    | tags             | Teste Repetido                               |
    | texto            | Teste Texto                                  |
    | data             | 1                                            |
    | hora             | 1                                            |
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
        | midia | veiculo   | jornalista     | area          | assunto                                      | texto       | data | hora | saida                                                                      |
        |       |           |                |               |                                              | Teste Texto | 1    | 1    | Nenhuma Mídia selecionada. Favor selecionar uma opção.                     | 
        | Globo |           |                |               |                                              | Teste Texto | 1    | 1    | Nenhum Veículo de Comunicação selecionado. Favor selecionar uma opção.     |
        | Globo | Televisão |                |               |                                              | Teste Texto | 1    | 1    | Nenhum Jornalista selecionado. Favor selecionar uma opção.                 |
        | Globo | Televisão | Evaristo Costa |               |                                              | Teste Texto | 1    | 1    | Nenhuma Área de Interesse selecionada. Favor selecionar uma opção.         |
        | Globo | Televisão | Evaristo Costa | criminalidade |                                              | Teste Texto | 1    | 1    | Nenhum Assunto selecionado. Favor selecionar uma opção.                    |
        | Globo | Televisão | Evaristo Costa | criminalidade | O uso de tecnologias no trabalho do policial |             | 1    | 1    | Texto da Solicitação não informado. Favor preenchê-lo.                     |
        | Globo | Televisão | Evaristo Costa | criminalidade | O uso de tecnologias no trabalho do policial | Teste Texto | 0    | 1    | Prazo não informado.                                                       |
        | Globo | Televisão | Evaristo Costa | criminalidade | O uso de tecnologias no trabalho do policial | Teste Texto | 1    | 0    | Prazo não informado.                                                       | 

   