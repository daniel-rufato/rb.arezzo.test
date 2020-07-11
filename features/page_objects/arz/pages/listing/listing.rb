require 'sections/listing/size_listing.rb'
#require 'sections/listing/shoe_listing.rb'

module ARZ
  module Pages
    module Listing
      class Listing < SitePrism::Page

        sections :size_listing, ARZ::Sections::Listing::SizeListing, 'ul[class="size-list"] li'
   #       sections :shoe_listing, ARZ::Sections::Listing::ShoeListing, 'div=class="item-corpo"]'
        element :showcase_title, 'div[class="conteudo-titulo"] h3'
        element :size_filter, 'button[selected="selected"]'
        element :btn_back, 'a[class="btn-voltar box"]'

        def select_size(size)
          flag = -1
          i = 0
          while flag==-1
            for i in 0..23 do
              if size_listing[i].is_size?(size)
                flag = i
                size_listing[i].select
                break
              end
            end
          end
        end

        def showcase_name
          wait_until_showcase_title_visible
          showcase_title.text
        end

        def btn_selected
          size_filter.text
        end
        
        def open_prod(shoe,size)
          flag = -1
          while flag == -1
            i = 0
            for i in 0..10 do
              page.all('a[class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-6 item btn-item"]')[i].gclick
              flag = -1
                count = ((page.all('button[class="btn-size"]').size)-1)
                i = 0
                for i in 0..count do
                  if size_listing[i].is_size?(size)
                    size_listing[i].select
                    if size_listing[i].selected?
                      flag = i
                      break
                    end
                  end
                end
                if flag == -1
                  btn_back.gclick
                  select_size(size)
                else
                  break
                end
            end
          end
          size_listing[i].select
        end



      end
    end
  end
end
