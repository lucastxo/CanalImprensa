#language: pt
@CadastroTag
Funcionalidade: Criar Tags

Eu como usuario do sistema
Quero criar uma Tag
Para editar posteriormente


Contexto:Acessar tela de Tags
    Dado que eu esteja na tela de tags

    Cenário: Criar tag com as informacoes corretas
    Quando eu cadastro uma tag com os seguintes dados:
    |nome   |Teste Tag|
    Então a seguinte mensagem de cadastro de tag deve aparecer "Tag cadastrada com sucesso!"

    Cenário: Criar tag sem nome
    Quando eu cadastro uma tag com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de cadastro de tag deve aparecer "Descrição da tag não informada. Favor preenchê-la."

    Cenário: Criar tag com nome já cadastrado
    Quando eu cadastro uma tag com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de cadastro de tag deve aparecer "Já existe uma Tag com essa descrição, favor escolher outra."