require 'pry'
Dado("que eu esteja na tela de areas e veiculo") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-midia-veiculos']").click
end
  
Quando("eu vinculo midia e veiculo com os seguintes dados:") do |table|
    @vinculo = table.rows_hash
    if !@vinculo[:midia].to_s.empty? and !@vinculo[:veiculo].to_s.empty?
        select(@vinculo[:midia], :from => 'comboSelecaoMidia')
        select(@vinculo[:veiculo], :from => 'lstVeiculosDisponiveis')
        find('[class$=dualListBox-add]').click
    end
    if !@vinculo[:midia].to_s.empty? and @vinculo[:veiculo].to_s.empty?
        select(@vinculo[:midia], :from => 'comboSelecaoMidia')
        find('[class$=dualListBox-removeAll]').click
    end
    find("[class$='icon-save']").click
    exists = page.has_css?('[class*=dialogConfirm]', visible: true)
    if exists == true
        find('[class$="btnSimConfirma"]', visible: true).click
    end
end
  
Então("a seguinte mensagem de vinculo de area e veiculo deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end

Quando("eu desvinculo midia e veiculo com os seguintes dados:") do |table|
    @vinculo = table.rows_hash
    if !@vinculo[:midia].to_s.empty?
        select(@vinculo[:midia], :from => 'comboSelecaoMidia')
        select(@vinculo[:veiculo], :from => 'lstVeiculosVinculados')
        find('[class$=dualListBox-remove]').click
    end
    find("[class$='icon-save']").click
    exists = page.has_css?('[class*=dialogConfirm]', visible: true)
    if exists == true
        find('[class$="btnSimConfirma"]', visible: true).click
    end
end