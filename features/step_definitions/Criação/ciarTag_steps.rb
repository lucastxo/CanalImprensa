require 'pry'
Dado("que eu esteja na tela de tags") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-tags']").click
end

Quando("eu cadastro uma tag com os seguintes dados:") do |table|
    @tag = table.rows_hash
    nomeTemp = @tag[:nome]
  
    if !nomeTemp.to_s.empty?
      if nomeTemp == 'Teste Tag'
        random = rand(10..50000000)
        nomeTemp = nomeTemp + random.to_s
      end
    end
    fill_in('txtDescricao', :with => nomeTemp)
end

Então("a seguinte mensagem de cadastro de tag deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end