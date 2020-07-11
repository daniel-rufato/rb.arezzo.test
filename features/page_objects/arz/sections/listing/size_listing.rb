module ARZ
  module Sections
    module Listing
      class SizeListing < SitePrism::Section

        element :btn_size, 'button[class="btn-size"]'
        elements :btn_disable, 'buton[disable="disable"]'
        element :btn_selected, 'button[selected="selected"]'
        def get_size
          wait_until_btn_size_visible
          btn_size.text
        end

        def is_size?(size)
          get_size.include? size
        end

        def select
            btn_size.hover
            btn_size.gclick
          sleep 3
        end

        def is_disponible?(size)
          i = 0
          flag = -1
          if has_css?('button[class="btn-size"]')
            count = ((page.all('button[class="btn-size"]').size) - 1)
            for i in 0..count do
              if get_size.include? size
                flag = i
                break
              end
            end
          end
            if flag != -1
              return true
            else
              return false
            end
        end

        def selected?
          if has_btn_selected?
            return true
          else
            return false
          end
        end

      end
    end
  end
end
