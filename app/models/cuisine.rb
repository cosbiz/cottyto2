# == Schema Information
#
# Table name: cuisines
#
#  id   :integer          not null, primary key
#  name :string
#

class Cuisine < ActiveRecord::Base
	validates :name, presence: :true, length: { minimum: 2, maximum: 25 }
	has_many :location_cuisines
	has_many :locations, through: :location_cuisines
end
