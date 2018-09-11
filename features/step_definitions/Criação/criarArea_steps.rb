require 'pry'
Dado("que eu esteja na tela de areas") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-area-interesse']").click
end

Quando("eu cadastro uma area com os seguintes dados:") do |table|
    @area = table.rows_hash
    nomeTemp = @area[:nome]
  
    if !nomeTemp.to_s.empty?
      if nomeTemp == 'Teste Area'
        random = rand(10..50000000)
        nomeTemp = nomeTemp + random.to_s
      end
    end
    fill_in('txtArea', :with => nomeTemp)
end

Então("a seguinte mensagem de cadastro de area deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end