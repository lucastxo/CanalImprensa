#language: pt
@edicaoNatureza
Funcionalidade: Editar Natureza

Eu como usuario do sistema
Quero editar uma Natureza
Para vincular posteriormente


Contexto:Acessar tela de edicao de Natureza
    Dado que eu esteja na tela de edicao de natureza

    Cenário: Editar natureza com as informacoes corretas
    Quando eu edito uma natureza com os seguintes dados:
    |nome   |Teste Natureza|
    Então a seguinte mensagem de edicao de natureza deve aparecer "Natureza alterada com sucesso!"

    Cenário: Editar natureza sem nome
    Quando eu edito uma natureza com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de edicao de natureza deve aparecer "Descrição da Natureza não informada. Favor preenchê-la."

    Cenário: Editar natureza com nome já cadastrado
    Quando eu edito uma natureza com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de edicao de natureza deve aparecer "Já existe uma Natureza com esse nome, favor escolher outro."

    Cenário: Editar situação do natureza
    Quando eu troco a situação do natureza
    Então a seguinte mensagem de troca de situação deve aparecer "Inativo"

    Cenário: Editar situação do natureza para ativo
    Quando eu troco a situação do natureza para ativo
    Então a seguinte mensagem de troca de situação deve aparecer "Ativo"