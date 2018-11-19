class Haunt < ApplicationRecord
	belongs_to :user, optional: true
	has_many :comments
	has_many :users, through: :comments

	validates :name, uniqueness: true, presence: true, on: :create
	validates :location, presence: true, on: :create
	validates :description, presence: true, on: :create

	
	accepts_nested_attributes_for :comments
end
