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
  end

  def show
  end

  # ============
  # Internally private methods
  # ============
  private
  def correct_user
    @user = User.find_by_id(params[:id])
    redirect_to root_path unless current_user? @user
  end

  def not_signed_in_user
    redirect_to root_path if signed_in?
  end

end
