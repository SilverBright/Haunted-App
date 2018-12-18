class Haunt < ApplicationRecord
	belongs_to :user, optional: true
	has_many :comments
	has_many :users, through: :comments

	validates :name, uniqueness: true, presence: true
	validates :city, presence: true
	validates :state, presence: true, length: { is: 2 }
	validates :description, presence: true

	scope :california, -> { where(state: 'CA') }

end
