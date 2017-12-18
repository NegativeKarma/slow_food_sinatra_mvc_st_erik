class SlowFoodApp
  post '/order_create' do
    product = Product.find(params['product-id'])
    if session[:order_id]
      order = Order.find(session[:order_id])
    else
      order = Order.create
      session[:order_id] = order.id
    end
    order_item = OrderItem.create(product: product, order: order)
    redirect '/', notice: "#{order_item.product.name} has been added to your order"
  end
end
