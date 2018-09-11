require 'pry'
Dado("que eu esteja na tela de veiculos") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-veiculos']").click
end

Quando("eu cadastro um veiculo com os seguintes dados:") do |table|
    @veiculo = table.rows_hash
    nomeTemp = @veiculo[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Veiculo'
          random = rand(10..50000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtDescricao', :with => nomeTemp)
end

Então("a seguinte mensagem de veiculo deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end