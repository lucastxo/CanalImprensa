require 'pry'
Dado("que eu esteja na tela de resposta como solicitante") do
    RealizaLogin.canalImprensa()
end
  
Dado("que eu tenha uma solicitação cadastrada para responder e respondida") do
    PreReq.criarSolicitacao()
    PreReq.enviarPortaVoz()
end

Quando("eu respondo a solicitacao como porta voz com os seguintes dados:") do |table|
    find("[class$='icon-incluir-solicitacao'][href*='SolicitacoesRecebidasPV']").click
    
    @resposta = table.rows_hash
    hoje = Time.now
    hoje = hoje.strftime '%d/%m/%Y'
    find('#filterDatatable').set hoje
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click
    find('#txtResposta').set @resposta[:resposta]
    find('[class="buttonIcon margin-r15"]', :text => 'Responder').click
  end
  
Então("a seguinte mensagem de resposta a solicitacao como porta voz deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end