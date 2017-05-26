class User < ApplicationRecord
	has_many :friends_withs, dependent: :destroy
   has_many :users, through: :friends_withs


 validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }


end
