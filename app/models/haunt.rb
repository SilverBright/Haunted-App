class Haunt < ApplicationRecord
	belongs_to :user, optional: true
	has_many :comments
	has_many :users, through: :comments

	# accepts_nested_attributes_for :user, :comments
	accepts_nested_attributes_for :user
	accepts_nested_attributes_for :comments
end
