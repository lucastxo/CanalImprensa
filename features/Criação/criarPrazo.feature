#language: pt
@CadastroPrazo
Funcionalidade: Criar Prazos

Eu como usuario do sistema
Quero criar um Prazo
Para editar posteriormente

Contexto:Acessar tela de prazo
    Dado que eu esteja na tela de prazo

    Cenário: Criar prazo com as informacoes corretas
    Quando eu cadastro um prazo com os seguintes dados:
    |horaMaximo     |2  |
    |minutoMaximo   |10 |
    |horaMedio      |4  |
    |minutoMedio    |20 |
    |horaNormal     |8  |
    |minutoNormal   |30 |
    Então a seguinte mensagem de cadastro de prazo deve aparecer "Prazos cadastrados com sucesso!"

    Esquema do Cenario: Campos obrigatórios

        Quando eu cadastro um prazo com os seguintes dados:
        | horaMaximo    | <horaMaximo>|
        | minutoMaximo  | 0           |
        | horaMedio     | <horaMedio> |
        | minutoMedio   | 0           |
        | horaNormal    | <horaNormal>|
        | minutoNormal  | 0           |
        Então a seguinte mensagem de cadastro de prazo deve aparecer "<saida>"

        Exemplos:
         | horaMaximo | horaMedio | horaNormal | saida |
         |            | 4         | 8          | Preencha o Prazo Máximo. |
         | 2          |           | 8          | Preencha o Prazo Médio.  |
         | 2          | 4         |            | Preencha o Prazo Normal. |

    Esquema do Cenario: Dados inválidos

        Quando eu cadastro um prazo com os seguintes dados:
        | horaMaximo    | 2             |
        | minutoMaximo  | <minutoMaximo>|
        | horaMedio     | 4             |
        | minutoMedio   | <minutoMedio> |
        | horaNormal    | 8             |
        | minutoNormal  | <minutoNormal>|
        Então a seguinte mensagem de cadastro de prazo deve aparecer "<saida>"

        Exemplos:
         | minutoMaximo | minutoMedio |  minutoNormal | saida |
         | 99           | 20          | 30            | Minutos em Prazo Máximo deve ser menor do que 60 ! |
         | 10           | 99          | 30            | Minutos em Prazo Médio deve ser menor do que 60 !  |
         | 10           | 20          | 99            | Minutos em Prazo Normal deve ser menor do que 60 ! |
    
    Esquema do Cenario: Regra do prazo

        Quando eu cadastro um prazo com os seguintes dados:
        | horaMaximo    | <horaMaximo>|
        | minutoMaximo  | 0           |
        | horaMedio     | <horaMedio> |
        | minutoMedio   | 0           |
        | horaNormal    | <horaNormal>|
        | minutoNormal  | 0           |
        Então a seguinte mensagem de cadastro de prazo deve aparecer "<saida>"

        Exemplos:
         | horaMaximo | horaMedio | horaNormal | saida                                                |
         | 10         | 4         | 8          | O prazo médio deve ser maior do que o prazo máximo ! |
         | 2          | 10        | 8          | O prazo normal deve ser maior do que o prazo médio ! |
         | 2          | 4         | 1          | O prazo normal deve ser maior do que o prazo médio ! |     
         | 2          | 1         | 8          | O prazo médio deve ser maior do que o prazo máximo ! |
    