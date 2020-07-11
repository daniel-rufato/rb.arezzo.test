require 'sections/listing/showcase_listing.rb'

module ARZ
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        include PageHelper::Utils

        sections :showcase_list, ARZ::Sections::Listing::ShowcaseListing, 'div[class="row no-padding no-margin justify-content-center vitrines"] div'
        
        def showcase_lists(shoe)
          flag = -1
          i = 0
          while flag==-1
            for i in 0..23 do
              if showcase_list[i].is_the?(shoe)
                flag = i
                showcase_list[i].open
                break
              end
            end
          end
          flag
        end

      end
    end
  end
end
