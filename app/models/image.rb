class Image < ActiveRecord::Base
  belongs_to :post
  attr_accessible :url
end
