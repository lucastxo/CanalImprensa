require 'date'
require 'pry'
require 'time'
Dado("que eu esteja na tela de cadastro de Solicitacao") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-incluir-solicitacao'][href$='Solicitacao/Cadastrar']").click
end
  
Quando("eu cadastro uma solicitacao com os seguintes dados:") do |table|
    @solicitacao = table.rows_hash

    if !@solicitacao[:midia].to_s.empty?
        select(@solicitacao[:midia], :from => 'lstMidias')
    end

    if !@solicitacao[:veiculo].to_s.empty?
        select(@solicitacao[:veiculo], :from => 'lstVeiculos')
    end
    if !@solicitacao[:jornalista].to_s.empty?
        find(:css, '[id$=lstJornalistas]' ).find(:option, @solicitacao[:jornalista], match: :first).select_option
    end
    if !@solicitacao[:area].to_s.empty?
        select(@solicitacao[:area], :from => 'lstAreas')
    end
    if !@solicitacao[:assunto].to_s.empty?
        select(@solicitacao[:assunto], :from => 'lstAssunto')
    end
    if !@solicitacao[:tags].to_s.empty?
        select(@solicitacao[:tags], :from => 'lstTags')
    end

    fill_in('txtTextoSolicitacao', :with => @solicitacao[:texto])

    if @solicitacao[:data] == '1'
        t = Time.now
        t = t+100000
        t = t.strftime '%d%m%Y'
        find('#txtData').set '00/00/0000'
        find('#txtData').set t
    end

    if @solicitacao[:hora] == '1'
        t = Time.now
        hora = t.strftime('%H:%M')
        find('#txtHora').set '00:00'
        find('#txtHora').set hora
    end

    find("[class$='icon-save']").click
end
  
Então("a seguinte mensagem de cadastro de solicitacao deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end