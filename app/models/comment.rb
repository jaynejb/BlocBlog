class Comment < ActiveRecord::Base
  attr_accessible :body, :create_date, :delete_date, :post_id, :user_id

  default_scope order('created_at desc')
  
  belongs_to :user
  belongs_to :post
end
