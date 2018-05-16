# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  image           :text
#  admin           :boolean          default(FALSE)
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :itineraries
  has_many :activities, through: :itineraries

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :image, :presence => true

end
