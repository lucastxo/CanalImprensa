require 'pry'
Dado("que eu esteja na tela de prazo") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-prazos']").click
end

Quando("eu cadastro um prazo com os seguintes dados:") do |table|
  @prazo = table.rows_hash

  fill_in('PrazoMaximoHora', :with => @prazo[:horaMaximo])
  fill_in('PrazoMaximoMinuto', :with => @prazo[:minutoMaximo])
  fill_in('PrazoMedioHora', :with => @prazo[:horaMedio])
  fill_in('PrazoMedioMinuto', :with => @prazo[:minutoMedio])
  fill_in('PrazoNormalHora', :with => @prazo[:horaNormal])
  fill_in('PrazoNormalMinuto', :with => @prazo[:minutoNormal])
  find("[class$='icon-save']").click
end

Então("a seguinte mensagem de cadastro de prazo deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end