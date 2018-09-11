Dado("que eu esteja na tela de solicitações pendentes") do
    RealizaLogin.canalImprensa()
end

Dado ("que eu tenha uma solicitação cadastrada") do
    PreReq.criarSolicitacao()
end
  
Quando("eu envio porta voz com os seguintes dados:") do |table|
    find("[class$='icon-solicitacoes-pendentes']").click
    @porta = table.rows_hash
    hoje = Time.now
    hoje = hoje.strftime '%d/%m/%Y'
    find('#filterDatatable').set hoje
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click
    find('#btnEnviarParaPortaVoz').click
    if !@porta[:comando].to_s.empty?
        find('[class$=selComando]').find(:option, @porta[:comando]).select_option
    end
    if !@porta[:subordinadas].to_s.empty?
        find('[class$=selSubordinados]').find(:option, @porta[:subordinadas]).select_option
    end
    find('[class$="icon-search"]').click
    if !@porta[:voz].to_s.empty?
        find('[class$=selPortaVoz]').find(:option, @porta[:voz]).select_option
    end
    if !@porta[:providencias].to_s.empty?
        find('#Providencia').set @porta[:providencias]
    end
    if !@porta[:resposta].to_s.empty?
        find('#ResponderPara').find(:option, @porta[:resposta]).select_option
    end
    if !@porta[:comando].to_s.empty? && !@porta[:subordinadas].to_s.empty?
        find('[class$="visible-sm btnSalvar"]').click
    end
end
  
Então("a seguinte mensagem de envio de porta voz deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end