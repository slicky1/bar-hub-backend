class CustomersController < ApplicationController

#    def index
#         session[:id] = "id"
#         cookies[:test] = "test"
#         render json: { session: session, cookies: cookies}
#    end

#    def show
#     byebug
#     render json: { message: "show"}
#    end
    
    
    def index
        @customers = Customer.all
        render json: @customers
    end
    
    def show 
        @customer = Customer.find(params[:id])
        render json: @customer
    end 

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            login(@customer)
            render "api/customers/show"
        else
            render json: @customer.errors.full_messages, status: 422
        end
    end

    private

    def customer_params
        params.require(:customer).permit( :first_name, :last_name, :username, :email, :password_digest)
    end
end

