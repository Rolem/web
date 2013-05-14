# encoding: utf-8
class ReceiptsController < ApplicationController
  # ============
  # Filters
  # ============
  before_filter :signed_in_user

  def new
    user = User.find params[:user_id]
    @receipt = user.receipts.build
  end

  def create
    # Obtains the user and deletes the parameter so it doesn't create a mass assignment exception
    user = User.find params[:receipt][:user_id]
    params[:receipt].delete :user_id

    # Creates the receipt model
    @receipt = Receipt.new params[:receipt]
    @receipt.user = user
    if @receipt.save
      if I18n.locale == :es
        flash[:success] = 'Has registrado exitosamente tu nuevo computador. ¡Disfrútalo!'
      else
        flash[:success] = 'You\'ve registered your new computer successfully. Enjoy it!'
      end
      redirect_to user_receipts_path(current_user.id)
    else
      render 'new'
    end
  end

  def destroy
    receipt = Receipt.find params[:id]
    if receipt.delete
      if I18n.locale == :es
        flash[:success] = 'Se ha eliminado correctamente registro del producto.'
      else
        flash[:success] = 'You\'ve deleted the product successfully.'
      end
    else
      if I18n.locale == :es
        flash[:error] = 'Ups, ocurrió un error intentando eliminar el producto, inténtalo de nuevo.'
      else
        flash[:error] = 'Oops, there was an error trying to deleted the product, please try again.'
      end
    end
    redirect_to user_receipts_path(current_user.id)
  end

end
