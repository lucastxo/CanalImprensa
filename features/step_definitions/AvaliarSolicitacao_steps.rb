require 'pry'
Dado("que eu esteja na tela de solicitações finalizadas") do
    RealizaLogin.canalImprensa()

end
  
Dado("que eu tenha uma solicitação cadastrada e finalizada") do
    PreReq.criarSolicitacao()
    PreReq.responderSolicitante()
end
  
Quando("eu avalio a solicitacao com os seguintes dados:") do |table|
    find("[class$='icon-solicitacoes-finalizadas']").click

    @avaliacao = table.rows_hash
    hoje = Time.now
    hoje = hoje.strftime '%d/%m/%Y'
    find('#filterDatatable').set hoje
    find('[src$="visualizar.png"]', match: :first).click
    find('[src$="visualizar.png"]', match: :first).click
    find('[class="State-icon State-default"]').click
    find('ClassificacaoMateria').find(:option, @resposta[:classificacao]).select_option

    if @avaliacao[:upload] == 'valido'
        attach_file('updArquivo', 'C:\Projetos\CanalImprensa\bolsodad.PNG')
    end

    find('#Finalizar').click
end
  
Então("a seguinte mensagem de avaliacao da solicitacao deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end