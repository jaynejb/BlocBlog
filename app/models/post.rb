class Post < ActiveRecord::Base
  attr_accessible :post_id, :title, :body, :create_date, :update_date

  belongs_to :user
end
