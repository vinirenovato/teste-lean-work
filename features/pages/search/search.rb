class SearchPage < SitePrism::Page

  elements :products, '.product-wrapper'

  def click_random_product
    products[rand(0..11)].click
  end

end