class Post < ApplicationRecord
    has_many :checks
    has_many :tables
end
