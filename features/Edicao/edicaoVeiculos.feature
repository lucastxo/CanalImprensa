#language: pt
@edicaoVeiculo
Funcionalidade: Editar Veiculo

Eu como usuario do sistema
Quero editar um Veiculo
Para vincular posteriormente


Contexto:Acessar tela de edicao de veiculo
    Dado que eu esteja na tela de edicao de veiculos

    Cenário: Editar veiculo com as informacoes corretas
    Quando eu edito um veiculo com os seguintes dados:
    |nome   |Teste Veiculo|
    Então a seguinte mensagem de edicao de veiculo deve aparecer "Veículo de comunicação alterado com sucesso!"

    Cenário: Editar veiculo sem nome
    Quando eu edito um veiculo com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de edicao de veiculo deve aparecer "Descrição do Veículo de comunicação não informada. Favor preenchê-la."

    Cenário: Editar veiculo com nome já cadastrado
    Quando eu edito um veiculo com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de edicao de veiculo deve aparecer "Já existe um veículo de comunicação com esse nome, por favor escolher outro."

    Cenário: Editar situação do veiculo
    Quando eu troco a situação do veiculo
    Então a seguinte mensagem de edicao de veiculo deve aparecer "Veículo de comunicação alterado com sucesso!"

    Cenário: Editar situação do veiculo para ativo
    Quando eu troco a situação do veiculo para ativo
    Então a seguinte mensagem de edicao de veiculo deve aparecer "Veículo de comunicação alterado com sucesso!"