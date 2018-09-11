require 'pry'
Dado("que eu esteja na tela de edicao de Tag") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-tags']").click
end

Quando("eu edito uma tag com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Tag')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @tag = table.rows_hash
    nomeTemp = @tag[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Tag'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtEditarDescricao', :with => nomeTemp)
    find("[class$='icon icon-save  btn-salvar']").click
end

Então("a seguinte mensagem de edicao de tag deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu troco a situação do tag") do
    find("[class$='btn-ativo']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Quando("eu troco a situação do tag para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end