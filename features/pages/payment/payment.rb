class PaymentPage < SitePrism::Page

  element :pac_delivery, '#opcao-entrega-04510'
  element :finish_order_tickt, '#pagamento-boleto-bancario .btn.btn-lg.btn-success'
  element :ticket_option, "[data-target='#pagamento-boleto-bancario']"
  element :follow_order_button, '.pa15 .btn.btn-primary.btn-lg'

end