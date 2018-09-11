require 'pry'
Dado("que eu esteja na tela de midias") do
  RealizaLogin.canalImprensa()
  find("[class$='icon-midia']").click
end

Quando("eu cadastro uma midia com os seguintes dados:") do |table|
  @midia = table.rows_hash
  nomeTemp = @midia[:nome]

  if !nomeTemp.to_s.empty?
    if nomeTemp == 'Teste SBT'
      random = rand(10..50000000)
      nomeTemp = nomeTemp + random.to_s
    end
  end
  fill_in('txtDescricao', :with => nomeTemp)
end

Então("a seguinte mensagem deve aparecer {string}") do |mensagem_alerta|
  find("[class$='icon-save']").click
  expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
  mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
  puts(mensagemExibida)
end