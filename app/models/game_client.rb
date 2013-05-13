# == Schema Information
#
# Table name: game_clients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GameClient < ActiveRecord::Base
  attr_accessible :name

  # ============
  # Associations
  # ============
  has_many :game_client_uses
  has_many :users, through: :game_client_uses

end
