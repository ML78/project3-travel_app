# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :text
#  country    :text
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
  has_many :activities 
end