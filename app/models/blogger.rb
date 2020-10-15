class Blogger < ApplicationRecord

    has_many :posts 
    has_many :destinations, through: :posts

    validates :name, uniqueness: true 
    validates :age, numeracality: {greater_than: 0 }

end
