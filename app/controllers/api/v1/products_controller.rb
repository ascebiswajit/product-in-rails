module Api
    module V1
        class ProductsController < ApplicationController
            # ALLOWED_DATA = %[title description price].freeze
            def index
                products=Product.all
                render json: products
            end
            def show
                product=Product.find(params[:id])
                render json: product
            end
            def create
                # data=json_payload
                
                # product =Product.new(data)
                product = Product.create(
                    title: params[:title],
                    description: params[:description],
                    price: params[:price]
                )
              
                render json: product

            
                # if product.save 
                   
                # else
                #     render json: {"error": "could not create"}
                
                # end
            end
            def update
                product=Product.find(params[:id])
                
                product.update(
                    title: params[:title],
                    description: params[:description],
                    price: params[:price]
                )
              
                render json: product
            end
            def destroy
                product=Product.find(params[:id])
                product.destroy
            end
                  
            
        end
    end
end



