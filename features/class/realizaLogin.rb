class RealizaLogin
	def RealizaLogin.canalImprensa()
		#visit('http://vmwsiades12.cmdo.policiamilitar.sp.gov.br/Pmesp.CanalImprensaHom/Index/Index?7PeCnlRMyoIXbl6NOLFbD9x61HkrTEXZ')
		visit('http://vmwsishom01.cmdo.policiamilitar.sp.gov.br/MS/login.aspx')
		find('#vUSRNUMCPFAUX').set '28469466801'
		find('#vSENHA').set '123456'
		find('[name="BTN_LOGIN"]').click
		sleep(3)
		page.driver.browser.close
		page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
		find('[class="ThemeClassicMainFolderText"]', text: 'CanalImprensa').click
		find('#cmSubMenuID14').click
		find('#cmSubMenuID15').click
		sleep(2)
		page.driver.browser.close
		page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
		#Substitui o link de dev com o de Hom, poderá ser removido quando o apontamento acontecer
		# url = URI.parse(current_url).to_s
		# urlF = url.slice(84..115)
		# urlI = 'http://vmwsishom01.cmdo.policiamilitar.sp.gov.br/Pmesp.CanalImprensaHom/Index/Index?'
		# urlA = urlI + urlF
		# visit(urlA)
		Capybara.page.driver.browser.manage.window.maximize
	end
end