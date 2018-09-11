require 'pry'
Dado("que eu esteja na tela de natureza") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-natureza']").click
end

Quando("eu cadastro uma natureza com os seguintes dados:") do |table|
    @natureza = table.rows_hash
    nomeTemp = @natureza[:nome]
  
    if !nomeTemp.to_s.empty?
      if nomeTemp == 'Teste Natureza'
        random = rand(10..50000000)
        nomeTemp = nomeTemp + random.to_s
      end
    end
    find("[name='Nome']").set nomeTemp
end

Então("a seguinte mensagem de cadastro de natureza deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end