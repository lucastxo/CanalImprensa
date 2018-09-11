require 'pry'
Dado("que eu esteja na tela de respostas") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-banco-respostas']").click
end

Quando("eu cadastro uma resposta com os seguintes dados:") do |table|
    @resposta = table.rows_hash
    nomeTemp = @resposta[:categoria]

    if !nomeTemp.to_s.empty?
        if nomeTemp == 'Teste Categoria'
          random = rand(10..50000000)
          nomeTemp = nomeTemp + random.to_s
        end
    end

    find("[name='Nome']").set nomeTemp
    find("[name='Descricao']").set @resposta[:resposta]
end

Então("a seguinte mensagem de cadastro de resposta deve aparecer {string}") do |mensagem_alerta|
    find("[class$='icon-save']").click
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end