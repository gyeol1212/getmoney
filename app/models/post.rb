class Post < ApplicationRecord
    has_many :tables
    has_many :checks
    has_many :results
    belongs_to :user  

    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
        where("content LIKE ?", "%#{search}%")
      end

end
