require 'pry'
Dado("que eu esteja na tela de edicao de Areas") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-area-interesse']").click
end

Quando("eu edito uma area com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Area')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @area = table.rows_hash
    nomeTemp = @area[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Area'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtDescricao', :with => nomeTemp)
    find("[class$='icon icon-save  btn-salvar']").click
end

Então("a seguinte mensagem de edicao de area deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu troco a situação do area") do
    find("[class$='btn-ativo']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Quando("eu troco a situação do area para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end