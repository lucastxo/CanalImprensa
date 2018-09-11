#language: pt
@CadastroJornalista
Funcionalidade: Criar Jornalista

Eu como usuario do sistema
Quero criar um Jornalista
Para utilizar posteriormente

Contexto:Acessar tela de Jornalista
    Dado que eu esteja na tela de Jornalista

    Cenário: Criar jornalista com as informacoes corretas
    Quando eu cadastro um jornalista com os seguintes dados:
    | nome             | Teste Nome         |
    | CPF              | 1                  |
    | data             | 22/08/1995         |
    | sexo             | Masculino          |
    | MTB              | 12345678           |
    | midia            | Teste Repetido     |
    | veiculo          | Teste Repetido     |
    | telefone         | 1132423-4243       |
    | celular          | 1132423-4243       |
    | alternativo      | 1132423-4243       |
    | email            | teste@gmail.com    |
    | confirmar        | teste@gmail.com    |
    | emailAlternativo | teste123@gmail.com |
    Então a seguinte mensagem de cadastro de jornalista deve aparecer "Jornalista cadastrado com sucesso!"

    Esquema do Cenario: Campos obrigatórios

        Quando eu cadastro um jornalista com os seguintes dados:
        | nome             | <nome>             |
        | CPF              | <cpf>              |
        | data             | 22/08/1995         |
        | sexo             | Masculino          |
        | MTB              | <MTB>              |
        | midia            | <midia>            |
        | veiculo          | <veiculo>          |
        | telefone         | 1132423-4243       |
        | celular          | <celular>          |
        | alternativo      | 1132423-4243       |
        | email            | <email>            |
        | confirmar        | <confirmar>        |
        | emailAlternativo | teste123@gmail.com |
        Então a seguinte mensagem de cadastro de jornalista deve aparecer "<saida>"

        Exemplos: 
         | nome       | cpf | MTB      | midia          | veiculo        | celular      | email           | confirmar       | saida                                                       |
         |            | 1   | 12345678 | Teste Repetido | Teste Repetido | 1132423-4243 | teste@gmail.com | teste@gmail.com | Nome não informado. Favor preenchê-lo.                      |
         | Teste Nome | 0   | 12345678 | Teste Repetido | Teste Repetido | 1132423-4243 | teste@gmail.com | teste@gmail.com | CPF não informado. Favor preenchê-lo.                       |
         | Teste Nome | 1   |          | Teste Repetido | Teste Repetido | 1132423-4243 | teste@gmail.com | teste@gmail.com | Registro MTB não informado. Favor preenchê-lo.              |
         | Teste Nome | 1   | 12345678 |                |                | 1132423-4243 | teste@gmail.com | teste@gmail.com | Mídia não informada. Favor preenchê-la.                     |
         | Teste Nome | 1   | 12345678 | Teste Repetido |                | 1132423-4243 | teste@gmail.com | teste@gmail.com | Veículo de Comunicação não informado. Favor preenchê-lo.    |
         | Teste Nome | 1   | 12345678 | Teste Repetido | Teste Repetido |              | teste@gmail.com | teste@gmail.com | Celular não informado. Favor preenchê-lo.                   |
         | Teste Nome | 1   | 12345678 | Teste Repetido | Teste Repetido | 1132423-4243 |                 | teste@gmail.com | E-mail não informado. Favor preenchê-lo.                    |
         | Teste Nome | 1   | 12345678 | Teste Repetido | Teste Repetido | 1132423-4243 | teste@gmail.com |                 | Confirmação de E-mail não informado, por favor preenchê-lo. |

    @TesteInvalido
    Esquema do Cenario: Dados inválidos
        
        Quando eu cadastro um jornalista com os seguintes dados:
        | nome             | <nome>             |
        | CPF              | <cpf>              |
        | data             | <Data>             |
        | sexo             | Masculino          |
        | MTB              | 12345678           |
        | midia            | Teste Repetido     |
        | veiculo          | Teste Repetido     |
        | telefone         | <telefone>         |
        | celular          | <celular>          |
        | alternativo      | <alternativo>      |
        | email            | <email>            |
        | confirmar        | <confirmar>        |
        | emailAlternativo | <emailAlternativo> |
        Então a seguinte mensagem de cadastro de jornalista deve aparecer "<saida>"

        Exemplos: 
         | nome       | cpf            | Data            | telefone     | celular      | alternativo        | email           | confirmar       | emailAlternativo     | saida                                                       |
         | Teste Nome | 99999999999    | 22/08/1995      | 1132423-4243 | 1132423-4243 | 1132423-4243       | teste@gmail.com | teste@gmail.com | teste123@gmail.com   | CPF inválido, por favor verificar!                          |
         | Teste Nome | 1              | 99/99/9999      | 1132423-4243 | 1132423-4243 | 1132423-4243       | teste@gmail.com | teste@gmail.com | teste123@gmail.com   | Data de Nascimento inválida, por favor verificar!           |
         | Teste Nome | 1              | 22/08/1995      | 9999999-9999 | 1132423-4243 | 1132423-4243       | teste@gmail.com | teste@gmail.com | teste123@gmail.com   | Telefone Comercial inválido, por favor verificar!           |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 9999999-9999 | 1132423-4243       | teste@gmail.com | teste@gmail.com | teste123@gmail.com   | Celular inválido, por favor verificar!                      |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 1132423-4243 | 9999999-9999       | teste@gmail.com | teste@gmail.com | teste123@gmail.com   | Celular Alternativo inválido, por favor verificar!          |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 1132423-4243 | 1132423-4243       | testegmail.com  | teste@gmail.com | teste123@gmail.com   | E-mail inválido, por favor verificar!                       |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 1132423-4243 | 1132423-4243       | teste@gmail.com | testegmail.com  | teste123@gmail.com   | Confirmação de E-mail não informado, por favor preenchê-lo. |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 1132423-4243 | 1132423-4243       | teste@gmail.com | teste@gmail.com | teste123gmail.com    | E-mail alternativo inválido, por favor verificar!           |
         | Teste Nome | 1              | 22/08/1995      | 1132423-4243 | 1132423-4243 | 1132423-4243       | tes@gmail.com   | teste@gmail.com | teste123@gmail.com   | E-mails não coincidem, por favor verificar!                 |
