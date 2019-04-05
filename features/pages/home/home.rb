class HomePage < SitePrism::Page

  set_url 'https://teste.leancommerce.com.br/'
  element :enter_store, '#header-md-my-acc'
  elements :enter_store_icon, '#dropdown-menu-my-acc a'

end