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
      flash[:error] = 'La contraseña y/o contraseña introducida es inválida.'
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end