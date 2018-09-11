class PreReq
    def PreReq.criarSolicitacao()
        find("[class$='icon-incluir-solicitacao'][href$='Solicitacao/Cadastrar']").click
        select('Teste Repetido', :from => 'lstMidias')
        select('Teste Repetido', :from => 'lstVeiculos')
        find(:css, '[id$=lstJornalistas]' ).find(:option, 'Teste Nome', match: :first).select_option
        select('Teste Repetido', :from => 'lstAreas')
        select('Teste Repetido', :from => 'lstAssunto')
        select('Teste Repetido', :from => 'lstTags')
        fill_in('txtTextoSolicitacao', :with => 'Teste Texto')

        t = Time.now
        t = t+100000
        t = t.strftime '%d%m%Y'
        find('#txtData').set '00/00/0000'
        find('#txtData').set t

        t = Time.now
        hora = t.strftime('%H:%M')
        find('#txtHora').set '00:00'
        find('#txtHora').set hora
    
        find("[class$='icon-save']").click
        find('[class$="btn-success btn-fechar-success"]').click
        find('[src$="home.png"]').click
    end

    def PreReq.enviarPortaVoz()
        find("[class$='icon-solicitacoes-pendentes']").click
        hoje = Time.now
        hoje = hoje.strftime '%d/%m/%Y'
        find('#filterDatatable').set hoje

        find('[src$="editar.png"]', match: :first).click
        find('[src$="editar.png"]', match: :first).click
        find('#btnEnviarParaPortaVoz').click
        find('[class$=selComando]').find(:option, 'C Com Soc Div Midias').select_option
        find('[class$=selSubordinados]').find(:option, 'C Com Soc C Com Soc Div Midias SEC DE IMPRENSA').select_option
        find('[class$="icon-search"]').click
        find('[class$=selPortaVoz]').find(:option, 'Porta-voz da OPM').select_option
        find('#Providencia').set 'testestestestesteste'
        find('#ResponderPara').find(:option, 'Diretamente ao Jornalista').select_option
        find('[class$="visible-sm btnSalvar"]').click
        find('[class$="btn-success btn-fechar-success"]').click
        find('[src$="home.png"]').click
    end

    def PreReq.responderSolicitante()
        find("[class$='icon-solicitacoes-pendentes']").click
        hoje = Time.now
        hoje = hoje.strftime '%d/%m/%Y'
        find('#filterDatatable').set hoje
        find('[src$="editar.png"]', match: :first).click
        find('[src$="editar.png"]', match: :first).click
        find('#btnResponderSolicitante').click
        find('#Resposta').set 'resposta'
        find('[class$="visible-sm btnSalvar"]').click
        find('[class$="btn-success btn-fechar-success"]').click
        find('[src$="home.png"]').click
    end

end