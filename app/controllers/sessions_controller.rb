class SessionsController < ApplicationController
    def create
        customer = Customer.find_by(username: customer_params[:username])
        session[:customer_id] = customer.id
        render json: customer
    end

    def destroy
        session.delete :customer_id
        render json: {"message": "delete route"}
    end

    private

    def customer_params
        params.permit(:username, :session)
    end
end