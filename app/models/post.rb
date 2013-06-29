class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author, :category

  validates :body,  presence: true
  validates :title, presence: true, uniqueness: true
  validates :category, presence: true

  default_scope order('created_at desc')
  
  belongs_to :user
  has_many :comments
end
