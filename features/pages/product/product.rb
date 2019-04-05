class ProductPage < SitePrism::Page

  elements :product_size, '.custom-radio'
  element :pay_button, '.btn.btn-success.btn-lg.btn-block.btn-buy'

  def random_product_size
    product_size[rand(0..product_size.length)].click
  end

end