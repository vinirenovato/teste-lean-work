class ProductPage < SitePrism::Page

  elements :product_size, ".product-options > div:nth-child(2) [class='product-sku-topic'] .product-sku-item"
  element :pay_button, '.btn.btn-success.btn-lg.btn-block.btn-buy'
  element :product_unavailable, '.product-unavaiable-description'

  def product_is_available
    if has_product_unavailable?
      while product_unavailable.visible?
        product_size[rand(0..product_size.length)].click
      end
    end
  end

  def click_random_product_size
    product_size[rand(0..product_size.length)].click
    product_is_available
    pay_button.click
  end
end