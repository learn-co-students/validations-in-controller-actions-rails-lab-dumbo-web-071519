class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
#     1. Add validations to `Post` such that...
#   1. The title cannot be blank
#   1. The category is either `"Fiction"` or `"Non-Fiction"`
#   1. The content is at least 100 characters long.
    validates :content, length: { minimum: 100 }
end
