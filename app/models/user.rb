class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]
	
	def self.from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
			user.email = auth.info.email
			user.provider = auth.provider
			user.uid = auth.uid
			user.password = Devise.friendly_token[0,20]
		end
	end

	def apply_omniauth(auth)
		update_attributes(
			provider: auth.provider,
			uid: auth.uid
		)
	end

	def has_facebook_linked?
		self.provider.present? && self.uid.present?
	end

	has_many :haunts
	has_many :reviews
	has_many :haunts, through: :reviews
	has_many :reviewed_haunts, :through => :reviews, :source => Haunt

	# has_many :reviewed_haunts, through: :reviews, class_name: "Haunt"

	# Warning: Ignoring invalid association :reviewed_haunts on User 
	# (Could not find the source association(s) "reviewed_haunt" or 
	# :reviewed_haunts in model Review. 
	# Try 'has_many :reviewed_haunts, :through => :reviews, :source => <name>'. 
	# Is it one of user or haunt?)

end
