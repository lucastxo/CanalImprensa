require 'pry'
Dado("que eu esteja na tela de edicao de natureza") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-natureza']").click
end

Quando("eu edito uma natureza com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Natureza')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @natureza = table.rows_hash
    nomeTemp = @natureza[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Natureza'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    find("[class='formField txt-alterar']").set nomeTemp
    find("[class$='icon icon-save btn btn-salvar']").click
end

Então("a seguinte mensagem de edicao de natureza deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu troco a situação do natureza") do
    find("[class$='btn-ativo']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Quando("eu troco a situação do natureza para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end

Então("a seguinte mensagem de troca de situação deve aparecer {string}") do |alerta_mensagem|
    assert_text(alerta_mensagem)
end