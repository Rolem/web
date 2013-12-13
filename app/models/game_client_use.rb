# == Schema Information
#
# Table name: game_client_uses
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  game_client_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class GameClientUse < ActiveRecord::Base
  # ============
  # Associations
  # ============
  belongs_to :user
  belongs_to :game_client

end
