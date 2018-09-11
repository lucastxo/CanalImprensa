require 'pry'
Dado("que eu esteja na tela de edicao de resposta") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-banco-respostas']").click
end

Quando("eu edito uma resposta com os seguintes dados:") do |table|
    fill_in('filterDatatable', :with => 'Teste Resposta')
    find('[src$="editar.png"]', match: :first).click
    find('[src$="editar.png"]', match: :first).click

    @resposta = table.rows_hash
    nomeTemp = @resposta[:categoria]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Categoria'
          random = rand(10..50000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end

    find("[class='formField txt-alterar']", match: :first).set nomeTemp
    find("[class$='txt-alterar'][id='txtResposta']").set @resposta[:resposta]
    find("[class$='icon icon-save btn btn-salvar']").click
end

Então("a seguinte mensagem de edicao de resposta deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end