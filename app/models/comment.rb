class Comment < ActiveRecord::Base
  attr_accessible :body, :create_date, :delete_date, :post_id, :user_id
  belongs_to :user
  belongs_to :post
end
