class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super
    ThanksMailer.welcome_email(current_user).deliver
  end
end
