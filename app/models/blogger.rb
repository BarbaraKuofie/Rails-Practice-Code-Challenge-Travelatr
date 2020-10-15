class Blogger < ApplicationRecord

    has_many :posts 
    has_many :destinations, through: :posts

    validates :name, uniqueness: true 
    validates :age, numericality: {greater_than: 0 , message: "Age must be greater than 0"}

    def total_likes 
        self.posts.map{|post|post.likes}.sum 
    end 

    def most_liked_post 
       self.posts.sort_by{|post|post.likes}.last
    end 

    def top_five
        sum = 0
        blogposts = Post.all.where(blogger_id: self.id)
        blogposts.each do |blogpost|
        if blogpost.destination_id !== blogpost.destination_id
            
        end
        sum.last(5)
    end

end
