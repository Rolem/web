class Blog < ActiveRecord::Base
  attr_accessible :autor, :imagen, :tags, :texto, :titulo
  serialize :tags
end
