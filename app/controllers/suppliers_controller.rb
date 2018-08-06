class SuppliersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]
  skip_before_action :verify_authenticity_token, :only => [:search]
  # before_action :check_for_login, :only => [:show, :invite, :new, :create]

  @_default_search_distanse = 10;

  # POST /suppliers
  # POST /suppliers.json
  def search
    if params[:geocode].present?
      lat = params[:geocode][:latitude]
      lng = params[:geocode][:longitude]
      radius = params[:radius]? params[:radius] : @_default_search_distanse
      skill_category = params[:skill_category]
      if skill_category.present?
        scope1 = Service.where(skill_category_id: skill_category).pluck(:supplier_id)
        scope2 = Supplier.near([lat, lng], radius, {order: "", units: :km}).pluck(:id)
        @suppliers = Supplier.find( scope1 & scope2 )
      else
        @suppliers = Supplier.near([lat, lng], radius, units: :km)
      end
    elsif params[:skill_category].present?
      @suppliers = Supplier.find(Service.where(skill_category_id: params[:skill_category]).pluck(:supplier_id));
    else
      @suppliers = Supplier.all
    end
    render :action => 'search_result.json'
  end


  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

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

  def search_params
    params.require(:flight).permit(:plane_id, :flight_number, :from, :to, :depart_dt)
  end
end
