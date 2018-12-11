class Haunt < ApplicationRecord
	belongs_to :user, optional: true
	has_many :comments
	has_many :users, through: :comments

	validates :name, uniqueness: true, presence: true
	validates :location, presence: true
	validates :description, presence: true

	#May not need this line... only use for forms
	accepts_nested_attributes_for :comments

	# I need a scope method!!! By location?  Easy to implement. 
end
