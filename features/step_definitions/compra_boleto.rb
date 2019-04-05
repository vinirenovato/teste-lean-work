Dado("que estou na tela incial do site") do
  @home_page = HomePage.new
  @home_page.load
end

Dado("faço o login") do |table|
  table.hashes.each do |row|
  @login_page = LoginPage.new
  @home_page.enter_store.click
  @home_page.enter_store_icon.first.click
  @login_page.do_login(row[:cpf], row[:senha])
  end
end

Quando("faço uma busca por qualquer produto") do |table|
  table.hashes.each do |row|
    @header = Header.new
    @header.search_box.set(row[:produto])
    @header.search_button.click
  end
end

Quando("seleciono o qualquer item do resultado") do
  @search_page = SearchPage.new
  @search_page.random_product
end

Quando("seleciono um tamanho e clico em comprar") do
  @product_page = ProductPage.new
  @product_page.random_product_size
end

Quando("clico em finalizar a compra") do
  @product_page.pay_button.click
end

Quando ("confirmo o pagamento") do
  @cart_page = CartPage.new
  @cart_page.finish_order_button.click
end

Então("finalizo a compra com opção de boleto bancário") do
  @payment_page = PaymentPage.new
  #@payment_page.pac_delivery.click
  @payment_page.ticket_option.click
  @payment_page.finish_order_tickt.click
end

Então("confirmo que o pedido foi realizado") do
  @my_orders = MyOrders.new
  @payment_page.follow_order_button.click
  expect(page).to have_css('.fsize30.text-primary')
end

