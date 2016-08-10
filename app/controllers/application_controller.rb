class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(_)
    users_path
  end

  def after_sign_up_path_for(_)
    users_path
  end
end
