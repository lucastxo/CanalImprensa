#language: pt
@CadastroNatureza
Funcionalidade: Criar Natureza da difusão

Eu como usuario do sistema
Quero criar uma natureza
Para editar posteriormente


Contexto:Acessar tela de natureza
    Dado que eu esteja na tela de natureza

    Cenário: Criar natureza com as informacoes corretas
    Quando eu cadastro uma natureza com os seguintes dados:
    |nome   |Teste Natureza|
    Então a seguinte mensagem de cadastro de natureza deve aparecer "Natureza cadastrada com sucesso!"

    Cenário: Criar natureza sem nome
    Quando eu cadastro uma natureza com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de cadastro de natureza deve aparecer "Descrição da Natureza não informada. Favor preenchê-la."

    Cenário: Criar natureza com nome já cadastrado
    Quando eu cadastro uma natureza com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de cadastro de natureza deve aparecer "Já existe uma Natureza com esse nome, por favor escolher outro."