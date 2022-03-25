class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { user: resource, message: 'Signed up sucessfully.' }, status: 200
  end

  def register_failed
    render json: { user: resource, message: 'Something went wrong.' }, status: 400
  end
end
