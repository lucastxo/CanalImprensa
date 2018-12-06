Dado("que eu esteja na tela de area e assunto") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-area-assunto']").click
end
  
Quando("eu vinculo area e assunto com os seguintes dados:") do |table|
    @vinculo = table.rows_hash
    if !@vinculo[:area].to_s.empty? and !@vinculo[:assunto].to_s.empty?
        binding.pry
        select(@vinculo[:area], :from => 'comboSelecaoArea')
        select(@vinculo[:assunto], :from => 'lstAssuntosDisponiveis')
        find('[class$=dualListBox-add]').click
    end
    if !@vinculo[:area].to_s.empty? and @vinculo[:assunto].to_s.empty?
        select(@vinculo[:area], :from => 'comboSelecaoArea')
        find('[class$=dualListBox-removeAll]').click
    end
    find("[class$='icon-save']").click
    exists = page.has_css?('[class*=dialogConfirm]', visible: true)
    if exists == true
        find('[class$="btnSimConfirma"]', visible: true).click
    end
end
  
Então("a seguinte mensagem de vinculo de area e assunto deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end
  

Quando("eu desvinculo area e assunto com os seguintes dados:") do |table|
    @vinculo = table.rows_hash
    if !@vinculo[:area].to_s.empty?
        select(@vinculo[:area], :from => 'comboSelecaoArea')
        select(@vinculo[:assunto], :from => 'lstAssuntosVinculados')
        find('[class$=dualListBox-remove]').click
    end
    find("[class$='icon-save']").click
    find('[class$="btnSimConfirma"]', visible: true).click
end