require 'pry'
Dado("que eu esteja na tela de mensagens") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-msg-coletiva']").click
end
  
Quando("eu cadastro uma mensagem com os seguintes dados:") do |table|
    @mensagem = table.rows_hash
    naturezaTemp = @mensagem[:natureza]
    mensagemTemp = @mensagem[:mensagem]

    if !naturezaTemp.to_s.empty?
        select(naturezaTemp, :from => 'idNatureza')
    end

    if !mensagemTemp.to_s.empty?
        if mensagemTemp == 'Teste Mensagem'
          random = rand(10..50000000)
          mensagemTemp = mensagemTemp + random.to_s
        end
    end
    find('#txtMensagem').set mensagemTemp
    find("[class$='icon-setores']").click
end
  
Então("a seguinte mensagem de cadastro de mensagem deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end