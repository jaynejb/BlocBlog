class Image < ActiveRecord::Base
  belongs_to :post
  attr_accessible :image_id, :url
end
