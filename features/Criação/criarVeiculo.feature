#language: pt
@CadastroVeiculos
Funcionalidade: Criar veiculos

Eu como usuario do sistema
Quero criar um veiculo de comunicacao
Para editar posteriormente


Contexto:Acessar tela de veiculos
    Dado que eu esteja na tela de veiculos

    Cenário: Criar veiculo com as informacoes corretas
    Quando eu cadastro um veiculo com os seguintes dados:
    |nome   |Teste Veiculo|
    Então a seguinte mensagem de veiculo deve aparecer "Veículo de comunicação cadastrado com sucesso!"

    Cenário: Criar veiculo sem nome
    Quando eu cadastro um veiculo com os seguintes dados:
    |nome   ||
    Então a seguinte mensagem de veiculo deve aparecer "Descrição do Veículo de comunicação não informada. Favor preenchê-la."

    Cenário: Criar veiculo com nome já cadastrado
    Quando eu cadastro um veiculo com os seguintes dados:
    |nome   |Teste Repetido|
    Então a seguinte mensagem de veiculo deve aparecer "Já existe um veículo de comunicação com esse nome, favor escolher outro."