class Post < ApplicationRecord
    has_many :tables
    has_many :checks
    
end
