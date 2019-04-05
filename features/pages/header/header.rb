class Header < SitePrism::Page

  element :search_box, "[id^='eac-']"
  element :search_button, '#header-btn-search'

end