class BlogController < ApplicationController
  def index
  	@blog = News.find( :all, :order => "id DESC" )
  end

end
