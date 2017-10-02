class Home < SitePrism:: Page
  set_url "http://www.olx.com.br/"

  def selecionar_estado(estado)
    click_link(estado)
  end

end
