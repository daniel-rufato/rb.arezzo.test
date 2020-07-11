require 'sections/listing/box_cart_listing.rb'

module ARZ
  module Pages
    module Cart
      class Cart < SitePrism::Page
      
        element :btn_voltar, 'a[id="botao-voltar"]'
        sections :box_product_cart, ARZ::Sections::Listing::BoxCart, 'div[class="row no-gutters item"]'
        element :div_total, 'div[class="preco-total"] span'

        def continue
          btn_voltar.gclick
        end

        def total_price
          div_total.text.gsub(',','.').delete('R$ ')

        end

      end
    end
  end
end