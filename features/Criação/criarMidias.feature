#language: pt
@CadastroMidia
Funcionalidade: Criar Midias

Eu como usuario do sistema
Quero criar uma midia
Para editar posteriormente


Contexto:Acessar tela de midias
    Dado que eu esteja na tela de midias

    Cenário: Criar midia com as informacoes corretas
    Quando eu cadastro uma midia com os seguintes dados:
    |nome   |Teste SBT|
    Então a seguinte mensagem deve aparecer "Mídia cadastrada com sucesso!"

    Cenário: Criar midia sem nome
    Quando eu cadastro uma midia com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem deve aparecer "Descrição da Mídia não informada. Favor preenchê-la."

    Cenário: Criar midia com nome já cadastrado
    Quando eu cadastro uma midia com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem deve aparecer "Já existe uma mídia com esse nome, favor escolher outro."