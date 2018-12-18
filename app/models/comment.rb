class Comment < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :haunt, optional: true

	# accepts_nested_attributes_for :user, reject_if: :all_blank
	# accepts_nested_attributes_for :haunt

	# Move validations here
	validates :content, presence: true

end
