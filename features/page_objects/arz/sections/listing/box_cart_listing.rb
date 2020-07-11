module ARZ
  module Sections
    module Listing
      class BoxCart < SitePrism::Section

        element :prod_name, 'span[class="nome-item"]'
        element :prod_size, 'span[class="referencia-item"]'
        element :prod_price, 'div[class="preco-padding"]'
        element :showcase_name, 'div[class="col col-xl-4 col-lg-6 col-md-6 col-sm-12 col-6"] span'

        def name
          prod_name.text
        end

        def size
          prod_size.text.delete(' ').slice(15..17)
        end

        def price
          prod_price.text.delete('R$ ').delete('X').gsub(',','.')
        end

      end
    end
  end
end
