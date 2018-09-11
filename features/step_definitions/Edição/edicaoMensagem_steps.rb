require 'pry'
Dado("que eu esteja na tela de edicao de M") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-msg-coletiva']").click
end
  
Quando("eu edito uma mensagem com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Mensagem')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @mensagem = table.rows_hash
    naturezaTemp = @mensagem[:natureza]
    mensagemTemp = @mensagem[:mensagem]

    if !naturezaTemp.to_s.empty?
        select(naturezaTemp, :from => 'idNaturezaEditar')
    end

    if !mensagemTemp.to_s.empty?
        if mensagemTemp == 'Teste Mensagem'
          random = rand(10..50000000)
          mensagemTemp = mensagemTemp + random.to_s
        end
    end
    find('#txtMensagemEditar').set mensagemTemp
    find('[class="buttonIcon margin-r15 btn-Enviar"]').click
end
  
Então("a seguinte mensagem de edicao de mensagem deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end