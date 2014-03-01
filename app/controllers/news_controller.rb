class NewsController < ApplicationController
  def index
  	@blogs = Blog.order(:title)
  end
end
