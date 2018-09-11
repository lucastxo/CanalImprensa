Dado("que eu esteja na tela de resposta ao solicitante") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-solicitacoes-pendentes']").click
end

Dado ("que eu tenha uma solicitação cadastrada para responder") do
    PreReq.criarSolicitacao()
end
  
Quando("eu respondo a solicitacao com os seguintes dados:") do |table|
    find("[class$='icon-solicitacoes-pendentes']").click
    @resposta = table.rows_hash
    hoje = Time.now
    hoje = hoje.strftime '%d/%m/%Y'
    find('#filterDatatable').set hoje
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click
    find('#btnResponderSolicitante').click
    find('#Resposta').set @resposta[:resposta]
    find('[class$="visible-sm btnSalvar"]').click
end
  
Então("a seguinte mensagem de resposta a solicitacao deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end