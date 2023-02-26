class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/products' do
    product = Product.all
     product.to_json(include: :seller)
  end
  
  get '/products/:id' do
    product  = Product.find(params[:id])
    product.to_json(include: :seller)
  end
  
  post '/products' do
      product = Product.create(
        name: params[:name],
        description: params[:description],
        price: params[:price],
        image_url: params[:image_url],
        seller_id: params[:seller_id]
        )
      
      seller = Seller.find_or_create_by(
        seller_name: params[:seller_name] ,
        address: params[:address],
        email: params[:emai],
        phone_number: params[:phone_number]
      )
      product.to_json(include: :seller)
      
    end
  
    delete '/products/:id' do
      product = Product.find(params[:id])
      product.destroy
      product.to_json
    end
  
    patch '/products/:id' do
      product = Product.find(params[:id])
      product.update(
        name: params[:name],
        description: params[:description],
        price: params[:price],
        image_url: params[:image_url]
      )
      product.to_json(include: :seller)
    end


end
