class StaticPagesController < ApplicationController
  def submit_contact
        @user_capture = ContactInformation.new full_name: params[:full_name], email: params[:email], message: params[:message]
    if @user_capture.save
      flash.now[:success] = 'Gracias por contarnos tu opinion, estaremos en contacto pronto.'
    else
      flash.now[:error] = 'Ups, algo pasa. Por favor prueba llenando el formulario nuevamente.'
    end
    render 'index'
  end
end
