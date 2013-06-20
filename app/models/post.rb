class Post < ActiveRecord::Base
  attr_accessible :post_id, :title, :body, :create_date, :update_date

  validates :body,  presence: true
  validates :title, presence: true, uniqueness: true

  default_scope order('created_at desc')
  
  belongs_to :user
  has_many :comments
end
