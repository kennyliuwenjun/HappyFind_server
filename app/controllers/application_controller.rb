class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :fetch_supplier

  private
  def fetch_supplier
    @current_supplier = Supplier.find_by :id => session[:supplier_id] if session[:supplier_id].present?
    session[:supplier_id] = nil unless @current_supplier.present?
  end
  def check_for_login
    redirect_to login_path unless @current_supplier.present?
  end

  # def check_for_admin
  #   redirect_to login_path unless (@current_supplier.present? && @current_supplier.admin?)
  # end


end
