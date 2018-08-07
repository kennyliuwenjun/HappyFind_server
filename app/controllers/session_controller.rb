class SessionController < ApplicationController
   skip_before_action :verify_authenticity_token, :only => [:create]
   def new
    end

    def index

      @supplier = Supplier.find(params[:id])
      render :action => 'index.json'
    end

  # POST: /session
  # POST: /session.json
  def create
    # supplier = Supplier.find_by :name =>
    # params[:name]
    supplier = Supplier.find_by :email =>
    params[:email]
    if supplier.present? &&   supplier.authenticate(params[:password])

      session[:supplier_id] = supplier.id
      render :action => 'index.json'
      # redirect_to root_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

   def destroy
    session[:supplier_id] = nil
    redirect_to root_path
   end

end
