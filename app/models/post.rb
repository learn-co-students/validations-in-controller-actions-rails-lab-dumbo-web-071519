class Post < ActiveRecord::Base
  validates :title, :content, presence:true
  validates :content, length: {minimum: 250}
  validates :category,  inclusion: {in:["Fiction", "Non-Fiction"]}
end
