require 'pry'
Dado("que eu esteja na tela de edicao de midias") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-midia']").click
end

Quando("eu edito uma midia com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste SBT')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @midia = table.rows_hash
    nomeTemp = @midia[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste SBT'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtEditarMidia', :with => nomeTemp)
    find("[class$='btn-salvar']").click
end

Quando("eu troco a situação da midia") do
    find("[class$='btn-ativo ']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Então("a seguinte mensagem de aviso deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu troco a situação da midia para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end