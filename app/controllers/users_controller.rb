# encoding: utf-8
class UsersController < ApplicationController
  # ============
  # Filters
  # ============
  before_filter :signed_in_user, except: [:new, :create]
  before_filter :correct_user, except: [:new, :create]
  before_filter :not_signed_in_user, only: [:new, :create]

  # ============
  # Actions
  # ============
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      flash[:success] = 'Te has registrado exitosamente. Ahora ayúdanos completando tu perfil. ¡Gracias!'
      sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    # It checks first that the password is correct
    if @user.authenticate params[:user][:password]
      # Validates all parameters
      params[:user][:password_confirmation] = params[:user][:password]
      params[:user].delete :social_level if params[:user][:social_level].eql? '0'

      if @user.update_attributes(params[:user])
        flash[:success] = 'Perfil actualizado'
        redirect_to @user
      else
        render 'edit'
      end
    else
      @user.errors[:base] << 'La contraseña suministrada es inválida.'
      render 'edit'
    end
  end

  def show
  end

  # ============
  # Internally private methods
  # ============
  private
  def correct_user
    @user = User.find_by_id(params[:id])
    redirect_to current_user unless current_user? @user
  end

  def not_signed_in_user
    redirect_to root_path if signed_in?
  end

end
