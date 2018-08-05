class SuppliersController <    ApplicationController
  # before_action :check_for_admin, :only => [:index]

 def index
  @suppliers = Supplier.all
 end

 def new
  @supplier = Supplier.new
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
      # SupplierMailer.welcome(@supplier).deliver_now
      format.html { redirect_to root_path, notice: 'Contractor was created.'}
      format.json { render :show, status: :created, location: @supplier }
    else
      format.html { render :new }
      format.json { render json: @supplier.errors, status: :unprocessable_entity }
     end
   end
 end
   private
    def supplier_params
      params.require(:supplier).permit(:name, :email, :password, :password_confirmation)
    end
end
