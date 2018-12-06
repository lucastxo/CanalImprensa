#language: pt
@CadastroAssunto
Funcionalidade: Criar Assunto

Eu como usuario do sistema
Quero criar um assunto
Para editar posteriormente


Contexto:Acessar tela de assuntos
    Dado que eu esteja na tela de assuntos

    Cenário: Criar assunto com as informacoes corretas
    Quando eu cadastro um assunto com os seguintes dados:
    |nome   |Teste Assunto|
    Então a seguinte mensagem de cadastro de assunto deve aparecer "Assunto cadastrado com sucesso!"

    Cenário: Criar assunto sem nome
    Quando eu cadastro um assunto com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de cadastro de assunto deve aparecer "Descrição do Assunto não informada. Favor preenchê-la."

    Cenário: Criar assunto com nome já cadastrado
    Quando eu cadastro um assunto com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de cadastro de assunto deve aparecer "Já existe um Assunto com esse nome, favor escolher outro."