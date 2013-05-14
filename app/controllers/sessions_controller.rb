# encoding: utf-8
class SessionsController < ApplicationController
  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by_email email

    if user && user.authenticate(password)
      sign_in user
      redirect_to user
    else
      if I18n.locale == :es
        flash[:error] = 'El usuario y/o contraseña introducida es inválida.'
      else
        flash[:error] = 'The user and/or password introduced is invalid.'
      end
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end