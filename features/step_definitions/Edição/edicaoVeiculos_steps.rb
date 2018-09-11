require 'pry'
Dado("que eu esteja na tela de edicao de veiculos") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-veiculos']").click
end

Quando("eu edito um veiculo com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Veiculo')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @veiculo = table.rows_hash
    nomeTemp = @veiculo[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Veiculo'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtEditarDescricao', :with => nomeTemp)
    find("[class$='icon-save  btn-salvar']").click
end

Quando("eu troco a situação do veiculo") do
    find("[class$='btn-ativo']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Quando("eu troco a situação do veiculo para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end

Então("a seguinte mensagem de edicao de veiculo deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end