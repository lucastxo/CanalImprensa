require 'pry'
Dado("que eu esteja na tela de assuntos") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-assunto']").click
end

Quando("eu cadastro um assunto com os seguintes dados:") do |table|
    @assunto = table.rows_hash
    nomeTemp = @assunto[:nome]
  
    if !nomeTemp.to_s.empty?
      if nomeTemp == 'Teste Assunto'
        random = rand(10..50000000)
        nomeTemp = nomeTemp + random.to_s
      end
    end
    fill_in('txtAssunto', :with => nomeTemp)
end

Então("a seguinte mensagem de cadastro de assunto deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end