# #language: pt
# @AvaliarSolicitacao
# Funcionalidade: Avaliar Solicitacao

# Eu como usuario do sistema
# Quero avaliar uma solicitacao finalizada
# Para verificar se foi bem sucedida

# Contexto:Acessar tela de solicitações finalizadas
#     Dado que eu esteja na tela de solicitações finalizadas

#     Cenário: Avaliar solicitacao com as informacoes corretas
#     Dado que eu tenha uma solicitação cadastrada e finalizada
#     Quando eu avalio a solicitacao com os seguintes dados:
#     | classificacao     | Positiva |
#     | upload            | valido   |
#     Então a seguinte mensagem de avaliacao da solicitacao deve aparecer "finalizada com sucesso"

#     Cenário: Avaliar solicitacao sem classificacao
#     Quando eu avalio a solicitacao com os seguintes dados:
#     | classificacao     | |
#     | upload            | valido   |
#     Então a seguinte mensagem de avaliacao da solicitacao deve aparecer "Selecione a classificação da matéria!"

#     Cenário: Avaliar solicitacao sem arquivo
#     Quando eu avalio a solicitacao com os seguintes dados:
#     | classificacao     | Positiva |
#     | upload            | |
#     Então a seguinte mensagem de avaliacao da solicitacao deve aparecer "É necessário incluir um anexo na solicitação!"
