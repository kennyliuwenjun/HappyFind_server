class SessionController < ApplicationController
   def new
    end


   def create
    # supplier = Supplier.find_by :name =>
    # params[:name]
    supplier = Supplier.find_by :email =>
    params[:email]
    if supplier.present? && supplier.authenticate(params[:password])

    session[:supplier_id] = supplier.id
    redirect_to root_path
   else
    flash[:error] = "Invalid email or password"
    redirect_to login_path
   end

   def destroy
    session[:supplier_id] = nil
    redirect_to root_path
   end
  end
end
