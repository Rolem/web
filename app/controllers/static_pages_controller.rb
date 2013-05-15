# encoding: utf-8
class StaticPagesController < ApplicationController
  def index
  end

  def productos
  end

  def compania
  end

  def comprar
  end

  def contacto
  end

  def volcano
  end

  def prodigy
  end

  def optimus
  end

  def force
  end

  def elemento
  end

  def submit_contact
    @contact_information = ContactInformation.new full_name: params[:full_name],
                                                  email: params[:email],
                                                  message: params[:message]
    if @contact_information.save
      if I18n.locale == :es
        flash.now[:success] = 'Gracias por escribirnos, estarmos en contacto contigo muy pronto.'
      else
        flash.now[:success] = 'Thanks for writing us, we\'ll be in touch with you very soon.'
      end
    else
      if I18n.locale == :es
        flash.now[:error] = 'Ups, ocurrió un error, inténtalo de nuevo.'
      else
        flash.now[:error] = 'Oops, there was an error, please try again.'
      end
    end

    render 'contacto'
  end
end
