class Friend < ApplicationRecord
	has_many :friends_withs,  dependent: :destroy
	has_many :users, through: :friends_withs
   
end

