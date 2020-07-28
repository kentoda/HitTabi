class Area < ApplicationRecord
	has_ancestry
	has_many :countries
end
