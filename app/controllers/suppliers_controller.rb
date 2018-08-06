class SuppliersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]
  skip_before_action :verify_authenticity_token, :only => [:search]
  # before_action :check_for_login, :only => [:show, :invite, :new, :create]


  # POST /suppliers
  # POST /suppliers.json
  def search
    @suppliers = if params[:geocode].present?
                   lat = params[:geocode][:latitude]
                   lng = params[:geocode][:longitude]
                   radius = params[:radius]? params[:radius] : 10
                   if params[:skill_category].present?
                     Supplier.near([lat, lng], radius, units: :km).each do |supplier|
                       supplier.services.where(SkillCategory_id: params[:skill_category])
                     end
                   else
                     Supplier.near([lat, lng], radius, units: :km)
                   end
                 else
                   Supplier.all
                 end
    # if params[:skill_category].present?
    #   @suppliers.each_with_index { |supplier,index|
    #     unless (supplier.services.pluck(:skill_category_id).include? params[:skill_category])
    #       @suppliers.delete(supplier)
    #     end
    #   }
    # end
    render :action => 'search.json'
  end


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
      params.require(:supplier).permit(:name, :address, :latitude, :longitude, :email, :password, :password_confirmation)
    end

  private
  def supplier_params
    params.require(:supplier).permit(:name, :email, :password, :password_confirmation)
  end
end
