class BlogController < ApplicationController
  def index
  	@blog = News.order(:title)
  end
  def blogs
  	@blog = News.order(:title)
  end
end
