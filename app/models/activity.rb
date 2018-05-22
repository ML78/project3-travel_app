# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  category    :text
#  image       :text
#  place       :string
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Activity < ApplicationRecord
  has_and_belongs_to_many :itineraries
  has_many :users, through: :itineraries
  # belongs_to :location

  validates :name, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
  validates :image, :presence => true
  validates :place, :presence => true
end
