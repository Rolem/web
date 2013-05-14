class StaticPagesController < ApplicationController
  def index
    if @locale_set
      spanish
      @locale_set = true
    end
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

  def english
    I18n.locale = :en
    redirect_to root_path
  end

  def spanish
    I18n.locale = :es
    redirect_to root_path
  end
end
