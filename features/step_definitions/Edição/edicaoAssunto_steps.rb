require 'pry'
Dado("que eu esteja na tela de edicao de Assunto") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-assunto']").click
end

Quando("eu edito um assunto com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Assunto')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @assunto = table.rows_hash
    nomeTemp = @assunto[:nome]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Assunto'
          random = rand(10..500000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end
    fill_in('txtEditarAssunto', :with => nomeTemp)
    find("[class$='icon icon-save btn-salvar']").click
end

Então("a seguinte mensagem de edicao de assunto deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu troco a situação do assunto") do
    find("[class$='btn-ativo']", match: :first).click
    find("[class$='icon-success']", match: :first).click
end

Quando("eu troco a situação do assunto para ativo") do
    find("[class$='btn-inativo']", match: :first).click
end