module ARZ
  module Sections
    module Listing
      class ShowcaseListing < SitePrism::Section

        element :showcase_name, 'div[class="col col-xl-4 col-lg-6 col-md-6 col-sm-12 col-6"] span'

        def get_showcase
          wait_until_showcase_name_visible
          showcase_name.text
        end

        def is_the?(showcase)
          get_showcase.include? showcase
        end

        def open
          showcase_name.hover
          showcase_name.gclick
        end

      end
    end
  end
end
