class News < ActiveRecord::Base
  attr_accessible :description, :image_url, :tags, :title
end
