Dir[File.join(File.dirname(__FILE__), 'page_objects/arz/pages/*.rb')]
  .sort.each { |file| require file }

module ARZ
  module Pages
    class ARZPages
      class << self

        def home
          ARZ::Pages::Home::Home.new
        end

        def listing
          ARZ::Pages::Listing::Listing.new
        end
       
        def cart
          ARZ::Pages::Cart::Cart.new
        end
       
        def product
          ARZ::Pages::Product::Product.new
        end
      end
    end
  end
end
