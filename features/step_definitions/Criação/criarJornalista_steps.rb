require 'pry'
require 'faker'
require "cpf_faker"
Dado("que eu esteja na tela de Jornalista") do
    RealizaLogin.canalImprensa()
    find("[class$='icon-incluir-jornalista']").click
end
  
Quando("eu cadastro um jornalista com os seguintes dados:") do |table|
    @jornalista = table.rows_hash

    fill_in('txtNome', :with => @jornalista[:nome])

    CPF = @jornalista[:CPF]

    if CPF == '1'
        CPF = Faker::CPF.numeric.to_s
        
    elsif CPF == '0'
        CPF = ''
    end
    find('#txtCpf').set "000.000.000-00"
    find('#txtCpf').set CPF
    select('Jornalista', :from => 'tipoJornalista')

    fill_in('txtDataNascimento', :with => '00000000')
    fill_in('txtDataNascimento', :with => @jornalista[:data])
    select(@jornalista[:sexo], :from => 'IdSelectSexo')
    fill_in('txtRegistroMTB', :with => @jornalista[:MTB])
    if !@jornalista[:midia].to_s.empty?
        select(@jornalista[:midia], :from => 'IdSelectMidias')
    end

    if !@jornalista[:veiculo].to_s.empty?
        select(@jornalista[:veiculo], :from => 'IdSelectVeiculos')
    end

    fill_in('txtTelefoneComercial', :with => @jornalista[:telefone])
    fill_in('txtCelularObrigatorio', :with => @jornalista[:celular])
    fill_in('txtCelularOpcional', :with => @jornalista[:alternativo])
    fill_in('txtEmalObrigatorio', :with => @jornalista[:email])
    fill_in('txtEmailConfirmar', :with => @jornalista[:confirmar])
    fill_in('txtEmailAlternativo', :with => @jornalista[:emailAlternativo])
    find("[class$='icon-save']").click
end
  
Então("a seguinte mensagem de cadastro de jornalista deve aparecer {string}") do |mensagem_alerta|
    expect(page).to have_css("[id$=Dialogo]", :text => mensagem_alerta, visible: true)
    mensagemExibida = find("[id$=Dialogo]", visible: true, match: :first).text # variavel que le o conteudo da mensagem do modal
    puts(mensagemExibida)
end