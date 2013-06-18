class User < ActiveRecord::Base
  attr_accessible :author, :bio, :email, :name, :twitter, :user_id, :website

  has_many :posts
  has_many :comments

  validates :name, presence: true, uniqueness: true, length: { maximum: 30 } 
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

end
