class Comment < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :haunt, optional: true

	
	validates :content, presence: true, on: :create
	accepts_nested_attributes_for :user, reject_if: :all_blank
	accepts_nested_attributes_for :haunt

end
