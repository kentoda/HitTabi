class UserProfile < ApplicationRecord
	 belongs_to :user
	 attachment :image

	 validates :age, presence: true
	 validates :job, presence: true
	 validates :introduction, presence: true
end
