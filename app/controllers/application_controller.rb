class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  get '/products' do
   product = Product.all
   product.to_json
  end

  post '/products' do
    product = Product.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image_url: params[:image_url]
    )
    product.to_json
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
    product.to_json
  end

end
