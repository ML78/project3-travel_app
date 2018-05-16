# == Schema Information
#
# Table name: itineraries
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Itinerary < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :activities
end
