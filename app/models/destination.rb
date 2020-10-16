class Destination < ApplicationRecord

    has_many :posts 
    has_many :bloggers, through: :posts

    def most_recent_five
     first_five =  self.posts.sort_by{|post| post.created_at.to_i}.last(5).reverse
        first_five.map{|post| post.title}
    end

    def most_liked_post 
        self.posts.sort_by{|post|post.likes}.last.title 
     end 
     
     def average_blogger_age
       blogger_age = self.bloggers.uniq.map{|blogger| blogger.age}.sum 
       blogger_age / blogger_age.size
     end
end
