class ContactInformation < ActiveRecord::Base
  attr_accessible :email, :full_name, :message
end
