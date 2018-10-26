class Comment < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :haunt

	accepts_nested_attributes_for :user, reject_if: :all_blank
end
