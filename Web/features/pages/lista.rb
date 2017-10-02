class Lista < SitePrism::Page
    element  :buscador, "#searchtext"
    element  :btn_buscar, "#searchbutton"
    elements :titulo,:xpath, "//*[@class='OLXad-list-link']/div[2]/div[1]"
    elements :valor,:xpath, "//*[@class='OLXad-list-link']/div[3]"


    def buscar(item)
        buscador.set item
        btn_buscar.click
        sleep(10)
    end

    def listar_itens(y)
        for i in 0..y-1
          puts titulo[i].text+" - "+valor[i].text
        end
    end

    def rolar_pagina()
        execute_script('window.scroll(0,10000);')
    end

    def mudar_pagina(pagina)
        rolar_pagina()
        click_link(pagina)
    end

    def detalhar_produto(posicao)
        sleep(5)
        titulo[posicao-1].click
    end

    def tirar_print()
      sleep(5)
      page.save_screenshot("reports/primeiro_item_seguda_pagina.png")
    end
end
