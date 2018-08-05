class SuppliersController < ApplicationController
 # before_action :check_for_admin, :only => [:index]
 skip_before_action :verify_authenticity_token, :only => [:search]
 # before_action :check_for_login, :only => [:show, :invite, :new, :create]

 def search

  @params = params
  respond_to do |format|
    format.json { render :search}
  end
 end

 def index
  @suppliers = Supplier.all
 end

 def new
  @suppliers = Supplier.new
 end

 # def create
 #  @suppliers = Supplier.new user_params
 #  if @supplier.save
 #    session[:supplier_id] = @supplier.id
 #    redirect_to new_home_path                    # ask boys about path
 #  else
 #    render :new
 #  end
 # end

  def create
   @supplier = Supplier.new(supplier_params)

    respond_to do |format|
     if @supplier.save
      SupplierMailer.welcome(@supplier).deliver_now
      format.html { redirect_to @supplier, notice: 'Contractor was created.'}
      format.json { render :show, status: :created, location: @supplier }
    else
      format.html { render :new }
      format.json { render json: @user.errors, status:
      :unprocessable_entity }
     end
   end
 end
   private
    def supplier_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def search_params
      params.require(:flight).permit(:plane_id, :flight_number, :from, :to, :depart_dt)
    end
end
