class CustomersController < ApplicationController

    def index
        @customers = Customer.all
        render json: @customers
    end
    
    def show 
        @customer = Customer.find(params[:id])
        render json: @customer
    end 

    # def create
    #     @customer = Customer.new(customer_params)
    #     if @customer.save
    #         login(@customer)
    #         render "api/customers/show"
    #     else
    #         render json: @customer.errors.full_messages, status: 422
    #     end
    # end

    # private

    # def customer_params
    #     params.require(:customer).permit(:email, :password_digest, :first_name, :last_name, :username)
    # end
end

