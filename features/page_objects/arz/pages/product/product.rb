module ARZ
  module Pages
    module Product
      class Product < SitePrism::Page

        element :prod_name, 'div[class="container product-title"] h2'
        element :prod_price, 'div[class="container product-title"] p[class="preco"]'
        element :btn_add, 'button[id="btn-comprar"]'
        element :btn_selected, 'button[selected="selected"]'

        def get_name
          prod_name.text
        end

        def get_price
          prod_price.text.delete('R$ ').gsub(',','.')
        end

        def add_cart
          btn_add.gclick
        end

        def get_size
          btn_selected.text
        end

      end
    end
  end
end