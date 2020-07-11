require_relative 'simple_js_runnable.rb'
require_relative 'js_usable_element.rb'
module PageHelper
  module Utils

    #
    # Realiza o scroll da página para o início.
    #
    def scroll_to_top
      execute_script('window.scroll(0,0);')
    end

    #
    # Encontra um elemento e faz scroll para que fique visível no meio da página.
    #
    # Se o index não for passado, retorna o primeiro elemento encontrado de uma
    # lista de elementos.
    #
    # @param string seletor
    #   Um seletor css como "#myid", ".my-class", ou "input[type='email']"
    #
    # @param number index
    #   O índice de qual dos resultados retornar para 'elem'.
    #
    def scroll_into_view(seletor, index = 0)
      Capybara.execute_script(
        "
        var elem = document.querySelectorAll('#{seletor}')[#{index}];
        elem.scrollIntoView({
          behavior: 'auto',
          block: 'center'
          });
          "
      )
    end

    #
    # Faz um "mouse over" no elemento especificado pelo seletor.
    #
    # @param string seletor
    #   Um seltor css como "#myid", ".my-class", "input[type='email']", etc.
    #
    # @param int index
    #   O indice do elemento a ser retornado. Ex, se tem uma lista de 4
    #   paragrafos, pegar o 0, 1, 2 ou 3.
    #
    def mouse_over(seletor, index = 0)
      elem = page.all(seletor)[index]
      page.driver.browser.action.move_to(elem.base.native).perform
    end

    #
    # Seta um valor em um campo com mascara.
    #   Ex: input de cep
    #
    # @param string seletor
    #   Um seltor css como "#myid", ".my-class", "input[type='email']", etc.
    #
    # @param string value
    #   O valor a ser setado no elemento selecionado
    #
    def set_value_with_mask(seletor, value)
      Capybara.execute_script(
        "
        $('#{seletor}').val('#{value}').trigger('keyup')
        "
      )
    end

    #
    # Aguarda o ajax retornar na pagina, mantendo
    # um loop e nao deixando dar timeout.
    #
    def wait_ajax
      Timeout.timeout(Capybara.default_max_wait_time) do
        loop until Capybara.current_session.evaluate_script('jQuery.active').zero?
      end
    end
  end

  module JsUsablePage
    include Greenable
    include Utils
  end
end
