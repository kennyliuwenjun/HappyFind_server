class ApplicationController < ActionController::Base
  include Knock::Authenticable

  private
  # Define unauthorized access json response
  def unauthorized_entity(entity_name)
    render json: { error: "Unauthorized request" }, status: :unauthorized
  end
end
