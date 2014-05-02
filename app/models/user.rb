class User < ActiveRecord::Base

    #has_many :achievements

    scope :search, lambda {|query| 
        where(["email LIKE ?", "%#{query}%"])
    }
end
