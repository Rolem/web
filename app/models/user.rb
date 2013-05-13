# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  gender          :string(255)
#  date_of_birth   :date
#  social_level    :integer
#  city            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :city, :date_of_birth, :email, :first_name, :gender, :last_name, :password, :password_confirmation,
                  :social_level, :game_genre

  has_secure_password

  # ============
  # Callbacks
  # ============
  before_save { self.email.downcase! }

  # ============
  # Associations
  # ============
  has_many :game_client_uses
  has_many :game_clients, through: :game_client_uses

  # ============
  # Validations
  # ============
  validates :first_name, presence: true
  validates :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
